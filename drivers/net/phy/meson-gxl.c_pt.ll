; ModuleID = '/llk/IR_all_yes/drivers/net/phy/meson-gxl.c_pt.bc'
source_filename = "../drivers/net/phy/meson-gxl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@__initcall__kmod_meson_gxl__368_289_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@meson_gxl_phy = internal global { [2 x %struct.phy_driver], [104 x i8] } { [2 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 25248768, ptr @.str, i32 -1, ptr null, i32 1, ptr null, ptr @genphy_soft_reset, ptr @meson_gxl_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr @meson_gxl_read_status, ptr @meson_gxl_config_intr, ptr @meson_gxl_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 25178881, ptr @.str.1, i32 -1, ptr null, i32 1, ptr null, ptr @genphy_soft_reset, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @meson_gxl_config_intr, ptr @meson_gxl_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], [104 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description369 = internal constant [60 x i8] c"meson_gxl.description=Amlogic Meson GXL Internal PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author370 = internal constant [28 x i8] c"meson_gxl.author=Baoqi wang\00", section ".modinfo", align 1
@__UNIQUE_ID_author371 = internal constant [58 x i8] c"meson_gxl.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author372 = internal constant [54 x i8] c"meson_gxl.author=Jerome Brunet <jbrunet@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file373 = internal constant [41 x i8] c"meson_gxl.file=drivers/net/phy/meson-gxl\00", section ".modinfo", align 1
@__UNIQUE_ID_license374 = internal constant [22 x i8] c"meson_gxl.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Meson GXL Internal PHY\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Meson G12A Internal PHY\00", [40 x i8] zeroinitializer }, align 32
@meson_gxl_read_status.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"meson_gxl\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"meson_gxl_read_status\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/phy/meson-gxl.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"LPA corruption - aneg restart\0A\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"meson_gxl_phy\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 257, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 260, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 272, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [31 x i8] c"../drivers/net/phy/meson-gxl.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 189, i32 4 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author370, ptr @__UNIQUE_ID_author371, ptr @__UNIQUE_ID_author372, ptr @__UNIQUE_ID_description369, ptr @__UNIQUE_ID_file373, ptr @__UNIQUE_ID_license374, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_meson_gxl__368_289_phy_module_init6, ptr @phy_module_exit, ptr @meson_gxl_phy, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gxl_phy to i32), i32 472, i32 576, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @meson_gxl_phy, i32 noundef 2, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_drivers_unregister(ptr noundef nonnull @meson_gxl_phy, i32 noundef 2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gxl_config_init(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @meson_gxl_open_banks(ptr noundef %phydev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.meson_gxl_write_reg.exit_crit_edge

entry.meson_gxl_write_reg.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_gxl_write_reg.exit

if.end.i:                                         ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 23, i16 noundef zeroext 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %do.end19.i, label %if.end.i.meson_gxl_write_reg.exit_crit_edge

if.end.i.meson_gxl_write_reg.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_gxl_write_reg.exit

do.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i3.i = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 20, i16 noundef zeroext 23579) #4
  br label %meson_gxl_write_reg.exit

meson_gxl_write_reg.exit:                         ; preds = %do.end19.i, %if.end.i.meson_gxl_write_reg.exit_crit_edge, %entry.meson_gxl_write_reg.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %entry.meson_gxl_write_reg.exit_crit_edge ], [ %call.i.i, %if.end.i.meson_gxl_write_reg.exit_crit_edge ], [ %call.i3.i, %do.end19.i ]
  %bus.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %8 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i.i, align 8
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %10 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 20, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not, label %if.end, label %meson_gxl_write_reg.exit.cleanup_crit_edge

meson_gxl_write_reg.exit.cleanup_crit_edge:       ; preds = %meson_gxl_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %meson_gxl_write_reg.exit
  %call.i16 = tail call fastcc i32 @meson_gxl_open_banks(ptr noundef %phydev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not.i17 = icmp eq i32 %call.i16, 0
  br i1 %tobool.not.i17, label %if.end.i22, label %if.end.meson_gxl_write_reg.exit29_crit_edge

if.end.meson_gxl_write_reg.exit29_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_gxl_write_reg.exit29

if.end.i22:                                       ; preds = %if.end
  %12 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i.i, align 8
  %14 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i20 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 23, i16 noundef zeroext 666) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20)
  %tobool2.not.i21 = icmp eq i32 %call.i.i20, 0
  br i1 %tobool2.not.i21, label %do.end19.i23, label %if.end.i22.meson_gxl_write_reg.exit29_crit_edge

if.end.i22.meson_gxl_write_reg.exit29_crit_edge:  ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_gxl_write_reg.exit29

do.end19.i23:                                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i.i, align 8
  %18 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i.i.i, align 8
  %call.i3.i24 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 20, i16 noundef zeroext 23581) #4
  br label %meson_gxl_write_reg.exit29

meson_gxl_write_reg.exit29:                       ; preds = %do.end19.i23, %if.end.i22.meson_gxl_write_reg.exit29_crit_edge, %if.end.meson_gxl_write_reg.exit29_crit_edge
  %ret.0.i25 = phi i32 [ %call.i16, %if.end.meson_gxl_write_reg.exit29_crit_edge ], [ %call.i.i20, %if.end.i22.meson_gxl_write_reg.exit29_crit_edge ], [ %call.i3.i24, %do.end19.i23 ]
  %20 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i.i.i, align 8
  %22 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i28 = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 20, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i25)
  %tobool2.not = icmp eq i32 %ret.0.i25, 0
  br i1 %tobool2.not, label %if.end4, label %meson_gxl_write_reg.exit29.cleanup_crit_edge

meson_gxl_write_reg.exit29.cleanup_crit_edge:     ; preds = %meson_gxl_write_reg.exit29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %meson_gxl_write_reg.exit29
  %call.i30 = tail call fastcc i32 @meson_gxl_open_banks(ptr noundef %phydev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool.not.i31 = icmp eq i32 %call.i30, 0
  br i1 %tobool.not.i31, label %if.end.i36, label %if.end4.meson_gxl_write_reg.exit43_crit_edge

if.end4.meson_gxl_write_reg.exit43_crit_edge:     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_gxl_write_reg.exit43

if.end.i36:                                       ; preds = %if.end4
  %24 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i.i.i, align 8
  %26 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i34 = tail call i32 @mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 23, i16 noundef zeroext -21846) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %tobool2.not.i35 = icmp eq i32 %call.i.i34, 0
  br i1 %tobool2.not.i35, label %do.end19.i37, label %if.end.i36.meson_gxl_write_reg.exit43_crit_edge

if.end.i36.meson_gxl_write_reg.exit43_crit_edge:  ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_gxl_write_reg.exit43

do.end19.i37:                                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i.i.i, align 8
  %30 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i.i.i, align 8
  %call.i3.i38 = tail call i32 @mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 20, i16 noundef zeroext 23580) #4
  br label %meson_gxl_write_reg.exit43

meson_gxl_write_reg.exit43:                       ; preds = %do.end19.i37, %if.end.i36.meson_gxl_write_reg.exit43_crit_edge, %if.end4.meson_gxl_write_reg.exit43_crit_edge
  %ret.0.i39 = phi i32 [ %call.i30, %if.end4.meson_gxl_write_reg.exit43_crit_edge ], [ %call.i.i34, %if.end.i36.meson_gxl_write_reg.exit43_crit_edge ], [ %call.i3.i38, %do.end19.i37 ]
  %32 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i.i.i, align 8
  %34 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i42 = tail call i32 @mdiobus_write(ptr noundef %33, i32 noundef %35, i32 noundef 20, i16 noundef zeroext 0) #4
  br label %cleanup

cleanup:                                          ; preds = %meson_gxl_write_reg.exit43, %meson_gxl_write_reg.exit29.cleanup_crit_edge, %meson_gxl_write_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %meson_gxl_write_reg.exit.cleanup_crit_edge ], [ %ret.0.i25, %meson_gxl_write_reg.exit29.cleanup_crit_edge ], [ %ret.0.i39, %meson_gxl_write_reg.exit43 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gxl_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %autoneg, align 8
  %1 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %entry.read_status_continue_crit_edge, label %if.then

entry.read_status_continue_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %read_status_continue

if.then:                                          ; preds = %entry
  %call = tail call i32 @genphy_aneg_done(ptr noundef %phydev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.else

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else.read_status_continue_crit_edge, label %if.end4

if.else.read_status_continue_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %read_status_continue

if.end4:                                          ; preds = %if.else
  %call.i = tail call fastcc i32 @meson_gxl_open_banks(ptr noundef %phydev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end38.i, label %if.end4.meson_gxl_read_reg.exit_crit_edge

if.end4.meson_gxl_read_reg.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_gxl_read_reg.exit

do.end38.i:                                       ; preds = %if.end4
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 20, i16 noundef zeroext -29312) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool44.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool44.not.i, label %if.end46.i, label %do.end38.i.meson_gxl_read_reg.exit_crit_edge

do.end38.i.meson_gxl_read_reg.exit_crit_edge:     ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_gxl_read_reg.exit

if.end46.i:                                       ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i3.i = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 21) #4
  br label %meson_gxl_read_reg.exit

meson_gxl_read_reg.exit:                          ; preds = %if.end46.i, %do.end38.i.meson_gxl_read_reg.exit_crit_edge, %if.end4.meson_gxl_read_reg.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.end4.meson_gxl_read_reg.exit_crit_edge ], [ %call.i.i, %do.end38.i.meson_gxl_read_reg.exit_crit_edge ], [ %call.i3.i, %if.end46.i ]
  %bus.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %10 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i.i, align 8
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %12 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef 20, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp6 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp6, label %meson_gxl_read_reg.exit.cleanup_crit_edge, label %if.end8

meson_gxl_read_reg.exit.cleanup_crit_edge:        ; preds = %meson_gxl_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %meson_gxl_read_reg.exit
  %14 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i.i.i, align 8
  %16 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i.i.i, align 8
  %call.i51 = tail call i32 @mdiobus_read(ptr noundef %15, i32 noundef %17, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp10 = icmp slt i32 %call.i51, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %18 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i.i, align 8
  %20 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i.i.i, align 8
  %call.i54 = tail call i32 @mdiobus_read(ptr noundef %19, i32 noundef %21, i32 noundef 6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %cmp14 = icmp slt i32 %call.i54, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %and = and i32 %ret.0.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end16.do.body_crit_edge, label %lor.lhs.false

if.end16.do.body_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end16
  %and18 = and i32 %call.i54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp ne i32 %and18, 0
  %and20 = and i32 %call.i51, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %or.cond = select i1 %tobool19.not, i1 %tobool21.not, i1 false
  br i1 %or.cond, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.read_status_continue_crit_edge

lor.lhs.false.read_status_continue_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %read_status_continue

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end16.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_gxl_read_status.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_gxl_read_status, %if.then27)) #4
          to label %do.end [label %if.then27], !srcloc !35

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_gxl_read_status.__UNIQUE_ID_ddebug367, ptr noundef %phydev, ptr noundef nonnull @.str.5) #4
  br label %do.end

do.end:                                           ; preds = %if.then27, %do.body
  %call29 = tail call i32 @genphy_restart_aneg(ptr noundef %phydev) #4
  br label %cleanup

read_status_continue:                             ; preds = %lor.lhs.false.read_status_continue_crit_edge, %if.else.read_status_continue_crit_edge, %entry.read_status_continue_crit_edge
  %call32 = tail call i32 @genphy_read_status(ptr noundef %phydev) #4
  br label %cleanup

cleanup:                                          ; preds = %read_status_continue, %do.end, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %meson_gxl_read_reg.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %read_status_continue ], [ %call29, %do.end ], [ %call, %if.then.cleanup_crit_edge ], [ %ret.0.i, %meson_gxl_read_reg.exit.cleanup_crit_edge ], [ %call.i51, %if.end8.cleanup_crit_edge ], [ %call.i54, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gxl_config_intr(ptr nocapture noundef readonly %phydev) #2 align 64 {
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
  %bus.i12 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i12 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i12, align 8
  %addr.i13 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i13 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i13, align 8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 29) #4
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %bus.i12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i12, align 8
  %8 = ptrtoint ptr %addr.i13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i13, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 30, i16 noundef zeroext 208) #4
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i14 = tail call i32 @mdiobus_write(ptr noundef %2, i32 noundef %4, i32 noundef 30, i16 noundef zeroext 0) #4
  %10 = ptrtoint ptr %bus.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i12, align 8
  %12 = ptrtoint ptr %addr.i13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i13, align 8
  %call.i.i17 = tail call i32 @mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 29) #4
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i.i17, i32 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then.cleanup_crit_edge ], [ %call.i, %if.end ], [ %14, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gxl_handle_interrupt(ptr noundef %phydev) #2 align 64 {
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
  %and = and i32 %call.i, 208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %autoneg, align 8
  %5 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp4.not = icmp ne i16 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and)
  %cmp5 = icmp eq i32 %and, 128
  %or.cond = select i1 %cmp4.not, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %and8 = and i32 %call.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_queue_state_machine(ptr noundef %phydev, i32 noundef 10) #4
  br label %cleanup

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_trigger_machine(ptr noundef %phydev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then9, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end3.cleanup_crit_edge ], [ 1, %if.else ], [ 1, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_gxl_open_banks(ptr nocapture noundef readonly %phydev) unnamed_addr #2 align 64 {
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
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 20, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i20 = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 20, i16 noundef zeroext 1024) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool2.not = icmp eq i32 %call.i20, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i23 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 20, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool6.not = icmp eq i32 %call.i23, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 8
  %call.i26 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 20, i16 noundef zeroext 1024) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i26, %if.end8 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i20, %if.end.cleanup_crit_edge ], [ %call.i23, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_aneg_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_restart_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_queue_state_machine(ptr noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !23, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_meson_gxl__368_289_phy_module_init6, !1, !"__initcall__kmod_meson_gxl__368_289_phy_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/meson-gxl.c", i32 289, i32 1}
!2 = !{ptr @__exitcall_phy_module_exit, !1, !"__exitcall_phy_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description369, !4, !"__UNIQUE_ID_description369", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/meson-gxl.c", i32 293, i32 1}
!5 = !{ptr @__UNIQUE_ID_author370, !6, !"__UNIQUE_ID_author370", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/meson-gxl.c", i32 294, i32 1}
!7 = !{ptr @__UNIQUE_ID_author371, !8, !"__UNIQUE_ID_author371", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/meson-gxl.c", i32 295, i32 1}
!9 = !{ptr @__UNIQUE_ID_author372, !10, !"__UNIQUE_ID_author372", i1 false, i1 false}
!10 = !{!"../drivers/net/phy/meson-gxl.c", i32 296, i32 1}
!11 = !{ptr @__UNIQUE_ID_file373, !12, !"__UNIQUE_ID_file373", i1 false, i1 false}
!12 = !{!"../drivers/net/phy/meson-gxl.c", i32 297, i32 1}
!13 = !{ptr @__UNIQUE_ID_license374, !12, !"__UNIQUE_ID_license374", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/meson-gxl.c", i32 260, i32 12}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/meson-gxl.c", i32 272, i32 12}
!18 = !{ptr @meson_gxl_phy, !19, !"meson_gxl_phy", i1 false, i1 false}
!19 = !{!"../drivers/net/phy/meson-gxl.c", i32 257, i32 26}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/meson-gxl.c", i32 189, i32 4}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @meson_gxl_read_status.__UNIQUE_ID_ddebug367, !21, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2148697335, i64 2148697340, i64 2148697353, i64 2148697397, i64 2148697431, i64 2148697452}
