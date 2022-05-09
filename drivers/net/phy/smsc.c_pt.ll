; ModuleID = '/llk/IR_all_yes/drivers/net/phy/smsc.c_pt.bc'
source_filename = "../drivers/net/phy/smsc.c"
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
%struct.smsc_phy_priv = type { i8, ptr }

@__initcall__kmod_smsc__347_488_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@smsc_phy_driver = internal global { [6 x %struct.phy_driver], [376 x i8] } { [6 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 508064, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr @smsc_phy_reset, ptr @smsc_phy_config_init, ptr @smsc_phy_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @smsc_phy_config_intr, ptr @smsc_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 508080, ptr @.str.1, i32 -16, ptr null, i32 0, ptr null, ptr @smsc_phy_reset, ptr @smsc_phy_config_init, ptr @smsc_phy_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @smsc_phy_config_intr, ptr @smsc_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsc_get_sset_count, ptr @smsc_get_strings, ptr @smsc_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 508096, ptr @.str.2, i32 -16, ptr null, i32 0, ptr null, ptr @smsc_phy_reset, ptr @smsc_phy_config_init, ptr @smsc_phy_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @lan87xx_config_aneg, ptr null, ptr @lan87xx_read_status, ptr @smsc_phy_config_intr, ptr @smsc_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsc_get_sset_count, ptr @smsc_get_strings, ptr @smsc_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 508112, ptr @.str.3, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @lan911x_config_init, ptr @smsc_phy_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @smsc_phy_config_intr, ptr @smsc_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 508144, ptr @.str.4, i32 -16, ptr null, i32 0, ptr null, ptr @smsc_phy_reset, ptr @smsc_phy_config_init, ptr @smsc_phy_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @lan95xx_config_aneg_ext, ptr null, ptr @lan87xx_read_status, ptr @smsc_phy_config_intr, ptr @smsc_phy_handle_interrupt, ptr @smsc_phy_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsc_get_sset_count, ptr @smsc_get_strings, ptr @smsc_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 508176, ptr @.str.5, i32 -16, ptr null, i32 2, ptr null, ptr @smsc_phy_reset, ptr @smsc_phy_config_init, ptr @smsc_phy_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr @lan87xx_read_status, ptr @smsc_phy_config_intr, ptr @smsc_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsc_get_sset_count, ptr @smsc_get_strings, ptr @smsc_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }], [376 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description348 = internal constant [33 x i8] c"smsc.description=SMSC PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author349 = internal constant [35 x i8] c"smsc.author=Herbert Valerio Riedel\00", section ".modinfo", align 1
@__UNIQUE_ID_file350 = internal constant [31 x i8] c"smsc.file=drivers/net/phy/smsc\00", section ".modinfo", align 1
@__UNIQUE_ID_license351 = internal constant [17 x i8] c"smsc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SMSC LAN83C185\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SMSC LAN8187\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SMSC LAN8700\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SMSC LAN911x Internal PHY\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SMSC LAN8710/LAN8720\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SMSC LAN8740\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"smsc,disable-energy-detect\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to request clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/net/phy/smsc.c\00", [41 x i8] zeroinitializer }, align 32
@str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"phy_symbol_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@switch.table.lan87xx_config_aneg = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 32768, i32 40960, i32 16384], [20 x i8] zeroinitializer }, align 32
@switch.table.lan95xx_config_aneg_ext = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 32768, i32 40960, i32 16384], [20 x i8] zeroinitializer }, align 32
@switch.table.lan95xx_config_aneg_ext.10 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 32768, i32 40960, i32 16384], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"smsc_phy_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 339, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 343, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 362, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 389, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 415, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 436, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 463, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 315, i32 37 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 324, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [26 x i8] c"../drivers/net/phy/smsc.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 234, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [33 x i8] c"switch.table.lan87xx_config_aneg\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [37 x i8] c"switch.table.lan95xx_config_aneg_ext\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [40 x i8] c"switch.table.lan95xx_config_aneg_ext.10\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author349, ptr @__UNIQUE_ID_description348, ptr @__UNIQUE_ID_file350, ptr @__UNIQUE_ID_license351, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_smsc__347_488_phy_module_init6, ptr @phy_module_exit, ptr @smsc_phy_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @str, ptr @switch.table.lan87xx_config_aneg, ptr @switch.table.lan95xx_config_aneg_ext, ptr @switch.table.lan95xx_config_aneg_ext.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc_phy_driver to i32), i32 1416, i32 1792, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lan87xx_config_aneg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lan95xx_config_aneg_ext to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lan95xx_config_aneg_ext.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @smsc_phy_driver, i32 noundef 6, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @phy_drivers_unregister(ptr noundef nonnull @smsc_phy_driver, i32 noundef 6) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc_phy_reset(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and)
  %cmp1 = icmp eq i32 %and, 192
  br i1 %cmp1, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = trunc i32 %call.i to i16
  %conv = or i16 %4, 224
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 8
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 8
  %call.i14 = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 18, i16 noundef zeroext %conv) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %call5 = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc_phy_config_init(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = trunc i32 %call.i to i16
  %conv = or i16 %8, 8192
  %9 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i, align 8
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i, align 8
  %call.i20 = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef %12, i32 noundef 17, i16 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp5 = icmp slt i32 %call.i20, 0
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i, align 8
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %14, i32 noundef %16, i32 noundef 29) #6
  %17 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i20, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc_phy_probe(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node2 = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node2, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 8, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %call.i, align 4
  %call.i46 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i46, null
  br i1 %tobool.i.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %call.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %priv7 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %4 = ptrtoint ptr %priv7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %priv7, align 8
  %call.i47 = tail call ptr @clk_get(ptr noundef %phydev, ptr noundef null) #6
  %cmp.i = icmp eq ptr %call.i47, inttoptr (i32 -2 to ptr)
  %.call.i = select i1 %cmp.i, ptr null, ptr %call.i47
  %refclk = getelementptr inbounds %struct.smsc_phy_priv, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %refclk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %.call.i, ptr %refclk, align 4
  %cmp.i48 = icmp ugt ptr %.call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %.call.i to i32
  %call14 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %phydev, i32 noundef %6, ptr noundef nonnull @.str.7) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %call.i49 = tail call i32 @clk_prepare(ptr noundef %.call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool.not.i = icmp eq i32 %call.i49, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end15
  %call1.i = tail call i32 @clk_enable(ptr noundef %.call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end20, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %.call.i) #6
  br label %cleanup

if.end20:                                         ; preds = %if.end.i
  %7 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %refclk, align 4
  %call22 = tail call i32 @clk_set_rate(ptr noundef %8, i32 noundef 50000000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end20.cleanup_crit_edge, label %if.then24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %refclk, align 4
  tail call void @clk_disable(ptr noundef %10) #6
  tail call void @clk_unprepare(ptr noundef %10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end20.cleanup_crit_edge, %if.then3.i, %if.end15.cleanup_crit_edge, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then11 ], [ %call22, %if.then24 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i49, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc_phy_config_intr(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %2 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp.not = icmp eq i16 %bf.clear, 0
  %bus.i31 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %3 = ptrtoint ptr %bus.i31 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i31, align 8
  %addr.i32 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %5 = ptrtoint ptr %addr.i32 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr.i32, align 8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %4, i32 noundef %6, i32 noundef 29) #6
  %7 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  %spec.select = select i1 %tobool3.not, i16 80, i16 208
  %10 = ptrtoint ptr %bus.i31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i31, align 8
  %12 = ptrtoint ptr %addr.i32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i32, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef 30, i16 noundef zeroext %spec.select) #6
  br label %if.end13

if.else:                                          ; preds = %entry
  %call.i33 = tail call i32 @mdiobus_write(ptr noundef %4, i32 noundef %6, i32 noundef 30, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool9.not = icmp eq i32 %call.i33, 0
  br i1 %tobool9.not, label %if.end11, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %bus.i31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i31, align 8
  %16 = ptrtoint ptr %addr.i32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i32, align 8
  %call.i.i36 = tail call i32 @mdiobus_read(ptr noundef %15, i32 noundef %17, i32 noundef 29) #6
  %18 = tail call i32 @llvm.smin.i32(i32 %call.i.i36, i32 0) #6
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.end
  %rc.0 = phi i32 [ %call.i, %if.end ], [ %18, %if.end11 ]
  %19 = tail call i32 @llvm.smin.i32(i32 %rc.0, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.end13 ], [ %7, %if.then.cleanup_crit_edge ], [ %call.i33, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc_phy_handle_interrupt(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @phy_error(ptr noundef %phydev) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i16 = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %cmp2 = icmp slt i32 %call.i16, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @phy_error(ptr noundef %phydev) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and = and i32 %call.i16, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @phy_trigger_machine(ptr noundef %phydev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end4.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 1, %if.end6 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smsc_get_sset_count(ptr nocapture noundef readnone %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @smsc_get_strings(ptr nocapture noundef readnone %phydev, ptr nocapture noundef writeonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %data, ptr @str, i32 32)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc_get_stats(ptr nocapture noundef readonly %phydev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 26) #6
  %4 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 -1) #6
  %5 = sext i32 %4 to i64
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %data, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan87xx_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdix_ctrl = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %0 = ptrtoint ptr %mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mdix_ctrl, align 1
  %switch.tableidx = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %2 = icmp ult i8 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

switch.lookup:                                    ; preds = %entry
  %3 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.lan87xx_config_aneg, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 8
  %call.i20 = tail call i32 @mdiobus_read(ptr noundef %6, i32 noundef %8, i32 noundef 27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp = icmp slt i32 %call.i20, 0
  br i1 %cmp, label %switch.lookup.cleanup_crit_edge, label %if.end

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %call.i20, 8191
  %or = or i32 %and, %switch.load
  %conv5 = trunc i32 %or to i16
  %9 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i, align 8
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i, align 8
  %call.i23 = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef %12, i32 noundef 27, i16 noundef zeroext %conv5) #6
  %13 = ptrtoint ptr %mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mdix_ctrl, align 1
  %mdix = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 38
  %15 = ptrtoint ptr %mdix to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %mdix, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %entry.cleanup.sink.split_crit_edge
  %call.i24 = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %switch.lookup.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i20, %switch.lookup.cleanup_crit_edge ], [ %call.i24, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan87xx_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %call = tail call i32 @genphy_read_status(ptr noundef %phydev) #6
  %link = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %link, align 8
  %3 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end65_crit_edge

entry.if.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end65_crit_edge, label %if.then

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then:                                          ; preds = %land.lhs.true
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then.cleanup66_crit_edge, label %if.end

if.then.cleanup66_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup66

if.end:                                           ; preds = %if.then
  %10 = trunc i32 %call.i to i16
  %conv = and i16 %10, -8193
  %11 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i, align 8
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i, align 8
  %call.i101 = tail call i32 @mdiobus_write(ptr noundef %12, i32 noundef %14, i32 noundef 17, i16 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %cmp6 = icmp slt i32 %call.i101, 0
  br i1 %cmp6, label %if.end.cleanup66_crit_edge, label %if.end9

if.end.cleanup66_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup66

if.end9:                                          ; preds = %if.end
  %call10 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call10, 640000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 237) #6
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #6
  %15 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i, align 8
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i, align 8
  %call.i104117 = tail call i32 @mdiobus_read(ptr noundef %16, i32 noundef %18, i32 noundef 17) #6
  %19 = and i32 %call.i104117, -2147483646
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %.not118 = icmp eq i32 %19, 0
  br i1 %.not118, label %if.end9.land.lhs.true33_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end9.land.lhs.true33_crit_edge:                ; preds = %if.end9
  br label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.then42.land.lhs.true33_crit_edge, %if.end9.land.lhs.true33_crit_edge
  %call34 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call34, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call34, %add.i
  br i1 %cmp3.i, label %if.then38, label %if.then42

if.then38:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i, align 8
  %call.i107 = tail call i32 @mdiobus_read(ptr noundef %21, i32 noundef %23, i32 noundef 17) #6
  br label %for.end

if.then42:                                        ; preds = %land.lhs.true33
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #6
  %24 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i, align 8
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i, align 8
  %call.i104 = tail call i32 @mdiobus_read(ptr noundef %25, i32 noundef %27, i32 noundef 17) #6
  %28 = and i32 %call.i104, -2147483646
  %.not = icmp eq i32 %28, 0
  br i1 %.not, label %if.then42.land.lhs.true33_crit_edge, label %if.then42.for.end_crit_edge

if.then42.for.end_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then42.land.lhs.true33_crit_edge:              ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true33

for.end:                                          ; preds = %if.then42.for.end_crit_edge, %if.then38, %if.end9.for.end_crit_edge
  %rc.0 = phi i32 [ %call.i107, %if.then38 ], [ %call.i104117, %if.end9.for.end_crit_edge ], [ %call.i104, %if.then42.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp50 = icmp slt i32 %rc.0, 0
  br i1 %cmp50, label %for.end.cleanup66_crit_edge, label %if.end53

for.end.cleanup66_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup66

if.end53:                                         ; preds = %for.end
  %29 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus.i, align 8
  %31 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr.i, align 8
  %call.i110 = tail call i32 @mdiobus_read(ptr noundef %30, i32 noundef %32, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp55 = icmp slt i32 %call.i110, 0
  br i1 %cmp55, label %if.end53.cleanup66_crit_edge, label %cleanup

if.end53.cleanup66_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup66

cleanup:                                          ; preds = %if.end53
  %33 = trunc i32 %call.i110 to i16
  %conv59 = or i16 %33, 8192
  %34 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus.i, align 8
  %36 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr.i, align 8
  %call.i113 = tail call i32 @mdiobus_write(ptr noundef %35, i32 noundef %37, i32 noundef 17, i16 noundef zeroext %conv59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %cmp61 = icmp slt i32 %call.i113, 0
  br i1 %cmp61, label %cleanup.cleanup66_crit_edge, label %cleanup.if.end65_crit_edge

cleanup.if.end65_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

cleanup.cleanup66_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup66

if.end65:                                         ; preds = %cleanup.if.end65_crit_edge, %land.lhs.true.if.end65_crit_edge, %entry.if.end65_crit_edge
  br label %cleanup66

cleanup66:                                        ; preds = %if.end65, %cleanup.cleanup66_crit_edge, %if.end53.cleanup66_crit_edge, %for.end.cleanup66_crit_edge, %if.end.cleanup66_crit_edge, %if.then.cleanup66_crit_edge
  %retval.1 = phi i32 [ %call, %if.end65 ], [ %call.i113, %cleanup.cleanup66_crit_edge ], [ %call.i110, %if.end53.cleanup66_crit_edge ], [ %rc.0, %for.end.cleanup66_crit_edge ], [ %call.i101, %if.end.cleanup66_crit_edge ], [ %call.i, %if.then.cleanup66_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan911x_config_init(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 29) #6
  %4 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan95xx_config_aneg_ext(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 508144, i32 %1)
  %cmp.not = icmp eq i32 %1, 508144
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %mdix_ctrl.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %2 = ptrtoint ptr %mdix_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mdix_ctrl.i, align 1
  %switch.tableidx = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %4 = icmp ult i8 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

switch.lookup:                                    ; preds = %if.then
  %5 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.lan95xx_config_aneg_ext, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %7 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %9 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i.i, align 8
  %call.i20.i = tail call i32 @mdiobus_read(ptr noundef %8, i32 noundef %10, i32 noundef 27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %cmp.i = icmp slt i32 %call.i20.i, 0
  br i1 %cmp.i, label %switch.lookup.cleanup_crit_edge, label %switch.lookup.cleanup.sink.split.sink.split_crit_edge

switch.lookup.cleanup.sink.split.sink.split_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %11 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %12, i32 noundef %14, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %15 = trunc i32 %call.i to i16
  %conv = or i16 %15, 1
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 8
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i, align 8
  %call.i16 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 16, i16 noundef zeroext %conv) #6
  %mdix_ctrl.i17 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %20 = ptrtoint ptr %mdix_ctrl.i17 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mdix_ctrl.i17, align 1
  %switch.tableidx38 = add i8 %21, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx38)
  %22 = icmp ult i8 %switch.tableidx38, 3
  br i1 %22, label %switch.lookup37, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

switch.lookup37:                                  ; preds = %if.end4
  %23 = sext i8 %switch.tableidx38 to i32
  %switch.gep39 = getelementptr inbounds [3 x i32], ptr @switch.table.lan95xx_config_aneg_ext.10, i32 0, i32 %23
  %24 = ptrtoint ptr %switch.gep39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load40 = load i32, ptr %switch.gep39, align 4
  %25 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i, align 8
  %27 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr.i, align 8
  %call.i20.i23 = tail call i32 @mdiobus_read(ptr noundef %26, i32 noundef %28, i32 noundef 27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i23)
  %cmp.i24 = icmp slt i32 %call.i20.i23, 0
  br i1 %cmp.i24, label %switch.lookup37.cleanup_crit_edge, label %switch.lookup37.cleanup.sink.split.sink.split_crit_edge

switch.lookup37.cleanup.sink.split.sink.split_crit_edge: ; preds = %switch.lookup37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

switch.lookup37.cleanup_crit_edge:                ; preds = %switch.lookup37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split.sink.split:                    ; preds = %switch.lookup37.cleanup.sink.split.sink.split_crit_edge, %switch.lookup.cleanup.sink.split.sink.split_crit_edge
  %call.i20.i23.sink = phi i32 [ %call.i20.i, %switch.lookup.cleanup.sink.split.sink.split_crit_edge ], [ %call.i20.i23, %switch.lookup37.cleanup.sink.split.sink.split_crit_edge ]
  %val.0.i20.sink = phi i32 [ %switch.load, %switch.lookup.cleanup.sink.split.sink.split_crit_edge ], [ %switch.load40, %switch.lookup37.cleanup.sink.split.sink.split_crit_edge ]
  %bus.i.sink = phi ptr [ %bus.i.i, %switch.lookup.cleanup.sink.split.sink.split_crit_edge ], [ %bus.i, %switch.lookup37.cleanup.sink.split.sink.split_crit_edge ]
  %addr.i.sink = phi ptr [ %addr.i.i, %switch.lookup.cleanup.sink.split.sink.split_crit_edge ], [ %addr.i, %switch.lookup37.cleanup.sink.split.sink.split_crit_edge ]
  %mdix_ctrl.i17.sink = phi ptr [ %mdix_ctrl.i, %switch.lookup.cleanup.sink.split.sink.split_crit_edge ], [ %mdix_ctrl.i17, %switch.lookup37.cleanup.sink.split.sink.split_crit_edge ]
  %and.i26 = and i32 %call.i20.i23.sink, 8191
  %or.i27 = or i32 %and.i26, %val.0.i20.sink
  %conv5.i28 = trunc i32 %or.i27 to i16
  %29 = ptrtoint ptr %bus.i.sink to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus.i.sink, align 8
  %31 = ptrtoint ptr %addr.i.sink to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr.i.sink, align 8
  %call.i23.i29 = tail call i32 @mdiobus_write(ptr noundef %30, i32 noundef %32, i32 noundef 27, i16 noundef zeroext %conv5.i28) #6
  %33 = ptrtoint ptr %mdix_ctrl.i17.sink to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mdix_ctrl.i17.sink, align 1
  %mdix.i30 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 38
  %35 = ptrtoint ptr %mdix.i30 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %mdix.i30, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end4.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %call.i24.i32 = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %switch.lookup37.cleanup_crit_edge, %if.end.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i20.i, %switch.lookup.cleanup_crit_edge ], [ %call.i20.i23, %switch.lookup37.cleanup_crit_edge ], [ %call.i24.i32, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc_phy_remove(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %refclk = getelementptr inbounds %struct.smsc_phy_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %refclk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %4 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %refclk, align 4
  tail call void @clk_put(ptr noundef %5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_smsc__347_488_phy_module_init6, !1, !"__initcall__kmod_smsc__347_488_phy_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/smsc.c", i32 488, i32 1}
!2 = !{ptr @__exitcall_phy_module_exit, !1, !"__exitcall_phy_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description348, !4, !"__UNIQUE_ID_description348", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/smsc.c", i32 490, i32 1}
!5 = !{ptr @__UNIQUE_ID_author349, !6, !"__UNIQUE_ID_author349", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/smsc.c", i32 491, i32 1}
!7 = !{ptr @__UNIQUE_ID_file350, !8, !"__UNIQUE_ID_file350", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/smsc.c", i32 492, i32 1}
!9 = !{ptr @__UNIQUE_ID_license351, !8, !"__UNIQUE_ID_license351", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/smsc.c", i32 343, i32 11}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/smsc.c", i32 362, i32 11}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/smsc.c", i32 389, i32 11}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/smsc.c", i32 415, i32 11}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/phy/smsc.c", i32 436, i32 11}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/smsc.c", i32 463, i32 11}
!22 = !{ptr @smsc_phy_driver, !23, !"smsc_phy_driver", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/smsc.c", i32 339, i32 26}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/phy/smsc.c", i32 315, i32 37}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/phy/smsc.c", i32 324, i32 10}
!28 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/phy/smsc.c", i32 43, i32 4}
!30 = distinct !{null, !31, !"smsc_hw_stats", i1 false, i1 false}
!31 = !{!"../drivers/net/phy/smsc.c", i32 42, i32 28}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/phy/smsc.c", i32 234, i32 3}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i8 0, i8 2}
