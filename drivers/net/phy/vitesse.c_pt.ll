; ModuleID = '/llk/IR_all_yes/drivers/net/phy/vitesse.c_pt.bc'
source_filename = "../drivers/net/phy/vitesse.c"
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

@__UNIQUE_ID_description281 = internal constant [39 x i8] c"vitesse.description=Vitesse PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author282 = internal constant [30 x i8] c"vitesse.author=Kriston Carson\00", section ".modinfo", align 1
@__UNIQUE_ID_file283 = internal constant [37 x i8] c"vitesse.file=drivers/net/phy/vitesse\00", section ".modinfo", align 1
@__UNIQUE_ID_license284 = internal constant [20 x i8] c"vitesse.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_vitesse__285_506_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@vsc82xx_driver = internal global { [11 x %struct.phy_driver], [668 x i8] } { [11 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1033760, ptr @.str, i32 1048560, ptr null, i32 0, ptr null, ptr null, ptr @vsc824x_config_init, ptr null, ptr null, ptr null, ptr null, ptr @vsc82x4_config_aneg, ptr null, ptr null, ptr @vsc82xx_config_intr, ptr @vsc82xx_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1033920, ptr @.str.1, i32 1048512, ptr null, i32 0, ptr null, ptr null, ptr @vsc824x_config_init, ptr null, ptr null, ptr null, ptr null, ptr @vsc82x4_config_aneg, ptr null, ptr null, ptr @vsc82xx_config_intr, ptr @vsc82xx_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 459984, ptr @.str.2, i32 1048560, ptr null, i32 0, ptr null, ptr null, ptr @vsc824x_config_init, ptr null, ptr null, ptr null, ptr null, ptr @vsc82x4_config_aneg, ptr null, ptr null, ptr @vsc82xx_config_intr, ptr @vsc82xx_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 459808, ptr @.str.3, i32 1048560, ptr null, i32 0, ptr null, ptr null, ptr @vsc8601_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc82xx_config_intr, ptr @vsc82xx_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 459856, ptr @.str.4, i32 1048560, ptr null, i32 0, ptr null, ptr null, ptr @vsc738x_config_init, ptr null, ptr null, ptr null, ptr null, ptr @vsc73xx_config_aneg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc73xx_read_page, ptr @vsc73xx_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 459904, ptr @.str.5, i32 1048560, ptr null, i32 0, ptr null, ptr null, ptr @vsc738x_config_init, ptr null, ptr null, ptr null, ptr null, ptr @vsc73xx_config_aneg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc73xx_read_page, ptr @vsc73xx_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 460112, ptr @.str.6, i32 1048560, ptr null, i32 0, ptr null, ptr null, ptr @vsc739x_config_init, ptr null, ptr null, ptr null, ptr null, ptr @vsc73xx_config_aneg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc73xx_read_page, ptr @vsc73xx_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 460160, ptr @.str.7, i32 1048560, ptr null, i32 0, ptr null, ptr null, ptr @vsc739x_config_init, ptr null, ptr null, ptr null, ptr null, ptr @vsc73xx_config_aneg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc73xx_read_page, ptr @vsc73xx_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 460384, ptr @.str.8, i32 1048560, ptr null, i32 0, ptr null, ptr null, ptr @vsc824x_config_init, ptr null, ptr null, ptr null, ptr null, ptr @vsc82x4_config_aneg, ptr null, ptr null, ptr @vsc82xx_config_intr, ptr @vsc82xx_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1033552, ptr @.str.9, i32 1048560, ptr null, i32 0, ptr null, ptr null, ptr @vsc8221_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc82xx_config_intr, ptr @vsc82xx_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1033392, ptr @.str.10, i32 1048560, ptr null, i32 0, ptr null, ptr null, ptr @vsc8221_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc82xx_config_intr, ptr @vsc82xx_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], [668 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Vitesse VSC8234\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Vitesse VSC8244\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Vitesse VSC8572\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Vitesse VSC8601\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Vitesse VSC7385\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Vitesse VSC7388\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Vitesse VSC7395\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Vitesse VSC7398\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Vitesse VSC8662\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Vitesse VSC8221\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Vitesse VSC8211\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 459984, i64 1033760, i64 1033920]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 459808, i64 459984, i64 1033920]
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"vsc82xx_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 405, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 408, i32 20 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 417, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 426, i32 20 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 435, i32 20 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 443, i32 20 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 452, i32 20 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 461, i32 20 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 470, i32 20 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 479, i32 20 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 490, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [29 x i8] c"../drivers/net/phy/vitesse.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 499, i32 11 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_description281, ptr @__UNIQUE_ID_file283, ptr @__UNIQUE_ID_license284, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_vitesse__285_506_phy_module_init6, ptr @phy_module_exit, ptr @vsc82xx_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc82xx_driver to i32), i32 2596, i32 3264, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @vsc82xx_driver, i32 noundef 11, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_drivers_unregister(ptr noundef nonnull @vsc82xx_driver, i32 noundef 11) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc824x_config_init(ptr nocapture noundef readonly %phydev) #2 align 64 {
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
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 28, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp1 = icmp eq i32 %5, 10
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 8
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 23) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then2.cleanup_crit_edge, label %if.end.i

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %10 = trunc i32 %call.i.i to i16
  %11 = and i16 %10, -3841
  %conv.i = or i16 %11, 2560
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 8
  %call.i10.i = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 23, i16 noundef zeroext %conv.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i10.i, %if.end.i ], [ %call.i.i, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc82x4_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %autoneg, align 8
  %1 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.not = icmp eq i16 %1, 0
  br i1 %cmp.not.not, label %land.lhs.true, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %3)
  %cmp1 = icmp slt i32 %3, 101
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @genphy_setup_forced(ptr noundef %phydev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %autoneg, align 8
  %5 = and i16 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not.i = icmp eq i16 %5, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %7)
  %cmp1.i = icmp sgt i32 %7, 100
  br i1 %cmp1.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 31, i16 noundef zeroext 21173) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp2.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp2.i, label %if.end5.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.end5.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 8
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i, align 8
  %call.i32.i = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 18, i16 noundef zeroext 18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i32.i)
  %cmp6.i = icmp sgt i32 %call.i32.i, -1
  br i1 %cmp6.i, label %if.end9.i, label %if.end5.i.if.else.i_crit_edge

if.end5.i.if.else.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.end9.i:                                        ; preds = %if.end5.i
  %16 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i, align 8
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i.i, align 8
  %call.i35.i = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 17, i16 noundef zeroext 10243) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i35.i)
  %cmp10.i = icmp sgt i32 %call.i35.i, -1
  br i1 %cmp10.i, label %if.end13.i, label %if.end9.i.if.else.i_crit_edge

if.end9.i.if.else.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.end13.i:                                       ; preds = %if.end9.i
  %20 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i.i, align 8
  %22 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i.i, align 8
  %call.i38.i = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 16, i16 noundef zeroext -30726) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i38.i)
  %cmp14.i = icmp sgt i32 %call.i38.i, -1
  br i1 %cmp14.i, label %if.then15.i, label %if.end13.i.if.else.i_crit_edge

if.end13.i.if.else.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i.i, align 8
  %26 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i.i, align 8
  %call.i41.i = tail call i32 @mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 31, i16 noundef zeroext 0) #4
  br label %cleanup

if.else.i:                                        ; preds = %if.end13.i.if.else.i_crit_edge, %if.end9.i.if.else.i_crit_edge, %if.end5.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %ret.251.i = phi i32 [ %call.i38.i, %if.end13.i.if.else.i_crit_edge ], [ %call.i35.i, %if.end9.i.if.else.i_crit_edge ], [ %call.i32.i, %if.end5.i.if.else.i_crit_edge ], [ %call.i.i, %if.end.i.if.else.i_crit_edge ]
  %28 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i.i, align 8
  %30 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i.i, align 8
  %call.i44.i = tail call i32 @mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 31, i16 noundef zeroext 0) #4
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call.i = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.else.i, %if.then15.i, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end5 ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i41.i, %if.then15.i ], [ %ret.251.i, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc82xx_config_intr(ptr nocapture noundef readonly %phydev) #2 align 64 {
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
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %drv, align 8
  %phy_id = getelementptr inbounds %struct.phy_driver, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phy_id, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %lor.rhs [
    i32 1033760, label %if.then.lor.end_crit_edge
    i32 1033920, label %if.then.lor.end_crit_edge33
    i32 459984, label %if.then.lor.end_crit_edge34
  ]

if.then.lor.end_crit_edge34:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end

if.then.lor.end_crit_edge33:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end

if.then.lor.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end

lor.rhs:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 459808, i32 %4)
  %cmp11 = icmp eq i32 %4, 459808
  %phi.cast = select i1 %cmp11, i16 -4096, i16 -24576
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.lor.end_crit_edge, %if.then.lor.end_crit_edge33, %if.then.lor.end_crit_edge34
  %6 = phi i16 [ -4096, %if.then.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ], [ -4096, %if.then.lor.end_crit_edge33 ], [ -4096, %if.then.lor.end_crit_edge34 ]
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %7 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %8, i32 noundef %10, i32 noundef 25, i16 noundef zeroext %6) #4
  br label %cleanup

if.else:                                          ; preds = %entry
  %bus.i27 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %11 = ptrtoint ptr %bus.i27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i27, align 8
  %addr.i28 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %13 = ptrtoint ptr %addr.i28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i28, align 8
  %call.i29 = tail call i32 @mdiobus_read(ptr noundef %12, i32 noundef %14, i32 noundef 26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %cmp13 = icmp slt i32 %call.i29, 0
  br i1 %cmp13, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %bus.i27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i27, align 8
  %17 = ptrtoint ptr %addr.i28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i28, align 8
  %call.i32 = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef %18, i32 noundef 25, i16 noundef zeroext 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.cleanup_crit_edge, %lor.end
  %retval.0 = phi i32 [ %call.i29, %if.else.cleanup_crit_edge ], [ %call.i, %lor.end ], [ %call.i32, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc82xx_handle_interrupt(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 8
  %phy_id = getelementptr inbounds %struct.phy_driver, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %3, label %if.else [
    i32 1033920, label %entry.if.end_crit_edge
    i32 459984, label %entry.if.end_crit_edge20
    i32 459808, label %entry.if.end_crit_edge21
  ]

entry.if.end_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge, %entry.if.end_crit_edge20, %entry.if.end_crit_edge21
  %irq_mask.0 = phi i32 [ 8192, %if.else ], [ 28672, %entry.if.end_crit_edge ], [ 28672, %entry.if.end_crit_edge20 ], [ 28672, %entry.if.end_crit_edge21 ]
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %6, i32 noundef %8, i32 noundef 26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_error(ptr noundef %phydev) #4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %and = and i32 %call.i, %irq_mask.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end10.cleanup_crit_edge, label %if.end12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_trigger_machine(ptr noundef %phydev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end10.cleanup_crit_edge, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 1, %if.end12 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8601_config_init(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp = icmp eq i32 %1, 10
  br i1 %cmp, label %if.then, label %entry.if.end.thread9_crit_edge

entry.if.end.thread9_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.thread9

if.then:                                          ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 23) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.if.end.thread_crit_edge, label %if.end

if.then.if.end.thread_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.thread

if.end:                                           ; preds = %if.then
  %6 = trunc i32 %call.i.i to i16
  %conv.i = or i16 %6, 256
  %7 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i, align 8
  %9 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i.i, align 8
  %call.i8.i = tail call i32 @mdiobus_write(ptr noundef %8, i32 noundef %10, i32 noundef 23, i16 noundef zeroext %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %cmp1 = icmp slt i32 %call.i8.i, 0
  br i1 %cmp1, label %if.end.if.end.thread_crit_edge, label %if.end.if.end.thread9_crit_edge

if.end.if.end.thread9_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.thread9

if.end.if.end.thread_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end.if.end.thread_crit_edge, %if.then.if.end.thread_crit_edge
  %ret.08 = phi i32 [ %call.i8.i, %if.end.if.end.thread_crit_edge ], [ %call.i.i, %if.then.if.end.thread_crit_edge ]
  br label %if.end.thread9

if.end.thread9:                                   ; preds = %if.end.thread, %if.end.if.end.thread9_crit_edge, %entry.if.end.thread9_crit_edge
  %11 = phi i32 [ %ret.08, %if.end.thread ], [ 0, %if.end.if.end.thread9_crit_edge ], [ 0, %entry.if.end.thread9_crit_edge ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc738x_config_init(ptr noundef %phydev) #2 align 64 {
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
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 31, i16 noundef zeroext 10800) #4
  %call1 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 8, i16 noundef zeroext 512, i16 noundef zeroext 512) #4
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i89 = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 31, i16 noundef zeroext 21173) #4
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i92 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 16, i16 noundef zeroext -18806) #4
  %call4 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 18, i16 noundef zeroext -249, i16 noundef zeroext 3) #4
  %call5 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 17, i16 noundef zeroext 255, i16 noundef zeroext 162) #4
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 8
  %call.i95 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 16, i16 noundef zeroext -26998) #4
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 8
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i, align 8
  %call.i98 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 31, i16 noundef zeroext 10800) #4
  %call8 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 8, i16 noundef zeroext 512, i16 noundef zeroext 0) #4
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i, align 8
  %call.i101 = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 31, i16 noundef zeroext 0) #4
  %24 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i, align 8
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i, align 8
  %call.i104 = tail call i32 @mdiobus_read(ptr noundef %25, i32 noundef %27, i32 noundef 3) #4
  %conv12 = and i32 %call.i104, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv12)
  %cmp = icmp eq i32 %conv12, 0
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 8
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i, align 8
  br i1 %cmp, label %if.then, label %if.else.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i107 = tail call i32 @mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 31, i16 noundef zeroext 10800) #4
  %call16 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 8, i16 noundef zeroext 512, i16 noundef zeroext 512) #4
  %32 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i, align 8
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i, align 8
  %call.i110 = tail call i32 @mdiobus_write(ptr noundef %33, i32 noundef %35, i32 noundef 31, i16 noundef zeroext 21173) #4
  %36 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i, align 8
  %38 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i, align 8
  %call.i113 = tail call i32 @mdiobus_write(ptr noundef %37, i32 noundef %39, i32 noundef 18, i16 noundef zeroext 0) #4
  %40 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i, align 8
  %42 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i, align 8
  %call.i116 = tail call i32 @mdiobus_write(ptr noundef %41, i32 noundef %43, i32 noundef 17, i16 noundef zeroext 1673) #4
  %44 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i, align 8
  %46 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr.i, align 8
  %call.i119 = tail call i32 @mdiobus_write(ptr noundef %45, i32 noundef %47, i32 noundef 16, i16 noundef zeroext -28782) #4
  %48 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i, align 8
  %50 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i, align 8
  %call.i122 = tail call i32 @mdiobus_write(ptr noundef %49, i32 noundef %51, i32 noundef 31, i16 noundef zeroext 21173) #4
  %52 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i, align 8
  %54 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr.i, align 8
  %call.i125 = tail call i32 @mdiobus_write(ptr noundef %53, i32 noundef %55, i32 noundef 18, i16 noundef zeroext 0) #4
  %56 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus.i, align 8
  %58 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr.i, align 8
  %call.i128 = tail call i32 @mdiobus_write(ptr noundef %57, i32 noundef %59, i32 noundef 17, i16 noundef zeroext 3637) #4
  %60 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus.i, align 8
  %62 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %addr.i, align 8
  %call.i131 = tail call i32 @mdiobus_write(ptr noundef %61, i32 noundef %63, i32 noundef 16, i16 noundef zeroext -26746) #4
  %64 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus.i, align 8
  %66 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addr.i, align 8
  %call.i134 = tail call i32 @mdiobus_write(ptr noundef %65, i32 noundef %67, i32 noundef 31, i16 noundef zeroext 10800) #4
  %call26 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 8, i16 noundef zeroext 512, i16 noundef zeroext 0) #4
  %68 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus.i, align 8
  %70 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %addr.i, align 8
  %call.i137 = tail call i32 @mdiobus_write(ptr noundef %69, i32 noundef %71, i32 noundef 23, i16 noundef zeroext -128) #4
  %72 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus.i, align 8
  %74 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %addr.i, align 8
  %call.i140 = tail call i32 @mdiobus_write(ptr noundef %73, i32 noundef %75, i32 noundef 23, i16 noundef zeroext 0) #4
  %76 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus.i, align 8
  %78 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %addr.i, align 8
  %call.i143 = tail call i32 @mdiobus_write(ptr noundef %77, i32 noundef %79, i32 noundef 31, i16 noundef zeroext 0) #4
  %80 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bus.i, align 8
  %82 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %addr.i, align 8
  %call.i146 = tail call i32 @mdiobus_write(ptr noundef %81, i32 noundef %83, i32 noundef 18, i16 noundef zeroext 72) #4
  %84 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bus.i, align 8
  %86 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %addr.i, align 8
  %call.i149 = tail call i32 @mdiobus_write(ptr noundef %85, i32 noundef %87, i32 noundef 31, i16 noundef zeroext 10800) #4
  %88 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bus.i, align 8
  %90 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %addr.i, align 8
  %call.i152 = tail call i32 @mdiobus_write(ptr noundef %89, i32 noundef %91, i32 noundef 20, i16 noundef zeroext 26112) #4
  %92 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bus.i, align 8
  %94 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %addr.i, align 8
  %call.i155 = tail call i32 @mdiobus_write(ptr noundef %93, i32 noundef %95, i32 noundef 31, i16 noundef zeroext 0) #4
  %96 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bus.i, align 8
  %98 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %addr.i, align 8
  %call.i158 = tail call i32 @mdiobus_write(ptr noundef %97, i32 noundef %99, i32 noundef 24, i16 noundef zeroext -23986) #4
  br label %if.end45

if.else.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i161 = tail call i32 @mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 31, i16 noundef zeroext 0) #4
  %100 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bus.i, align 8
  %102 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %addr.i, align 8
  %call.i164 = tail call i32 @mdiobus_write(ptr noundef %101, i32 noundef %103, i32 noundef 18, i16 noundef zeroext 72) #4
  %104 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bus.i, align 8
  %106 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %addr.i, align 8
  %call.i167 = tail call i32 @mdiobus_write(ptr noundef %105, i32 noundef %107, i32 noundef 31, i16 noundef zeroext 10800) #4
  %call40 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 22, i16 noundef zeroext 4032, i16 noundef zeroext 576) #4
  %call41 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 24576, i16 noundef zeroext 16384) #4
  %108 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bus.i, align 8
  %110 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %addr.i, align 8
  %call.i170 = tail call i32 @mdiobus_write(ptr noundef %109, i32 noundef %111, i32 noundef 31, i16 noundef zeroext 1) #4
  %call43 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -8192, i16 noundef zeroext 24576) #4
  %112 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bus.i, align 8
  %114 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %addr.i, align 8
  %call.i173 = tail call i32 @mdiobus_write(ptr noundef %113, i32 noundef %115, i32 noundef 31, i16 noundef zeroext 0) #4
  br label %if.end45

if.end45:                                         ; preds = %if.else.critedge, %if.then
  %116 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bus.i, align 8
  %118 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %addr.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %117, i32 noundef %119, i32 noundef 31, i16 noundef zeroext 10800) #4
  %call1.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 12, i16 noundef zeroext 768, i16 noundef zeroext 512) #4
  %120 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bus.i, align 8
  %122 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %addr.i, align 8
  %call.i9.i = tail call i32 @mdiobus_write(ptr noundef %121, i32 noundef %123, i32 noundef 31, i16 noundef zeroext 0) #4
  %call3.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 27, i16 noundef zeroext -256, i16 noundef zeroext 97) #4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vsc73xx_config_aneg(ptr nocapture noundef readnone %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc73xx_read_page(ptr nocapture noundef readonly %phydev) #2 align 64 {
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
  %call.i = tail call i32 @__mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 31) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc73xx_write_page(ptr nocapture noundef readonly %phydev, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %page to i16
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 31, i16 noundef zeroext %conv) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc739x_config_init(ptr noundef %phydev) #2 align 64 {
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
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 31, i16 noundef zeroext 10800) #4
  %call1 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 8, i16 noundef zeroext 512, i16 noundef zeroext 512) #4
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i38 = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 31, i16 noundef zeroext 21173) #4
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i41 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 16, i16 noundef zeroext -18806) #4
  %call4 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 18, i16 noundef zeroext -249, i16 noundef zeroext 3) #4
  %call5 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 17, i16 noundef zeroext 255, i16 noundef zeroext 162) #4
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 8
  %call.i44 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 16, i16 noundef zeroext -26998) #4
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 8
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i, align 8
  %call.i47 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 31, i16 noundef zeroext 10800) #4
  %call8 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 8, i16 noundef zeroext 512, i16 noundef zeroext 0) #4
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i, align 8
  %call.i50 = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 31, i16 noundef zeroext 0) #4
  %24 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i, align 8
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i, align 8
  %call.i53 = tail call i32 @mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 31, i16 noundef zeroext 0) #4
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 8
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i, align 8
  %call.i56 = tail call i32 @mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 18, i16 noundef zeroext 72) #4
  %32 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i, align 8
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i, align 8
  %call.i59 = tail call i32 @mdiobus_write(ptr noundef %33, i32 noundef %35, i32 noundef 31, i16 noundef zeroext 10800) #4
  %call13 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 22, i16 noundef zeroext 4032, i16 noundef zeroext 576) #4
  %call14 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 24576, i16 noundef zeroext 16384) #4
  %36 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i, align 8
  %38 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i, align 8
  %call.i62 = tail call i32 @mdiobus_write(ptr noundef %37, i32 noundef %39, i32 noundef 31, i16 noundef zeroext 1) #4
  %call16 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -8192, i16 noundef zeroext 24576) #4
  %40 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i, align 8
  %42 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i, align 8
  %call.i65 = tail call i32 @mdiobus_write(ptr noundef %41, i32 noundef %43, i32 noundef 31, i16 noundef zeroext 0) #4
  %44 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i, align 8
  %46 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %45, i32 noundef %47, i32 noundef 31, i16 noundef zeroext 10800) #4
  %call1.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 12, i16 noundef zeroext 768, i16 noundef zeroext 512) #4
  %48 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i, align 8
  %50 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i, align 8
  %call.i9.i = tail call i32 @mdiobus_write(ptr noundef %49, i32 noundef %51, i32 noundef 31, i16 noundef zeroext 0) #4
  %call3.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 27, i16 noundef zeroext -256, i16 noundef zeroext 97) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8221_config_init(ptr nocapture noundef readonly %phydev) #2 align 64 {
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
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 28, i16 noundef zeroext 4) #4
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_setup_forced(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__UNIQUE_ID_description281, !1, !"__UNIQUE_ID_description281", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/vitesse.c", i32 79, i32 1}
!2 = !{ptr @__UNIQUE_ID_author282, !3, !"__UNIQUE_ID_author282", i1 false, i1 false}
!3 = !{!"../drivers/net/phy/vitesse.c", i32 80, i32 1}
!4 = !{ptr @__UNIQUE_ID_file283, !5, !"__UNIQUE_ID_file283", i1 false, i1 false}
!5 = !{!"../drivers/net/phy/vitesse.c", i32 81, i32 1}
!6 = !{ptr @__UNIQUE_ID_license284, !5, !"__UNIQUE_ID_license284", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_vitesse__285_506_phy_module_init6, !8, !"__initcall__kmod_vitesse__285_506_phy_module_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/vitesse.c", i32 506, i32 1}
!9 = !{ptr @__exitcall_phy_module_exit, !8, !"__exitcall_phy_module_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/vitesse.c", i32 408, i32 20}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/vitesse.c", i32 417, i32 11}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/vitesse.c", i32 426, i32 20}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/vitesse.c", i32 435, i32 20}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/phy/vitesse.c", i32 443, i32 20}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/vitesse.c", i32 452, i32 20}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/vitesse.c", i32 461, i32 20}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/phy/vitesse.c", i32 470, i32 20}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/phy/vitesse.c", i32 479, i32 20}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/phy/vitesse.c", i32 490, i32 11}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/phy/vitesse.c", i32 499, i32 11}
!32 = !{ptr @vsc82xx_driver, !33, !"vsc82xx_driver", i1 false, i1 false}
!33 = !{!"../drivers/net/phy/vitesse.c", i32 405, i32 26}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
