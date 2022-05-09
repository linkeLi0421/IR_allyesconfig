; ModuleID = '/llk/IR_all_yes/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c_pt.bc'
source_filename = "../drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.phy_meson_axg_mipi_dphy_priv = type { ptr, ptr, ptr, ptr, ptr, %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }

@__initcall__kmod_phy_meson_axg_mipi_dphy__289_410_phy_meson_axg_mipi_dphy_driver_init6 = internal global ptr @phy_meson_axg_mipi_dphy_driver_init, section ".initcall6.init", align 4
@phy_meson_axg_mipi_dphy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @phy_meson_axg_mipi_dphy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @phy_meson_axg_mipi_dphy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_phy_meson_axg_mipi_dphy_driver_exit = internal global ptr @phy_meson_axg_mipi_dphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [72 x i8] c"phy_meson_axg_mipi_dphy.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [63 x i8] c"phy_meson_axg_mipi_dphy.description=Meson AXG MIPI DPHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [73 x i8] c"phy_meson_axg_mipi_dphy.file=drivers/phy/amlogic/phy-meson-axg-mipi-dphy\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [39 x i8] c"phy_meson_axg_mipi_dphy.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"phy-meson-axg-mipi-dphy\00", [40 x i8] zeroinitializer }, align 32
@phy_meson_axg_mipi_dphy_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,axg-mipi-dphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@phy_meson_axg_mipi_dphy_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@phy_meson_axg_mipi_dphy_regmap_conf = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"phy_meson_axg_mipi_dphy:357:(&phy_meson_axg_mipi_dphy_regmap_conf)->lock\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"analog\00", [25 x i8] zeroinitializer }, align 32
@phy_meson_axg_mipi_dphy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @phy_meson_axg_mipi_dphy_init, ptr @phy_meson_axg_mipi_dphy_exit, ptr @phy_meson_axg_mipi_dphy_power_on, ptr @phy_meson_axg_mipi_dphy_power_off, ptr null, ptr null, ptr null, ptr @phy_meson_axg_mipi_dphy_configure, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@phy_meson_axg_mipi_dphy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 385, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"phy_meson_axg_mipi_dphy_probe\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@phy_meson_axg_mipi_dphy_probe._entry_ptr = internal global ptr @phy_meson_axg_mipi_dphy_probe._entry, section ".printk_index", align 4
@switch.table.phy_meson_axg_mipi_dphy_power_on = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 14, i32 12, i32 8], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [31 x i8] c"phy_meson_axg_mipi_dphy_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 403, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 406, i32 12 }
@___asan_gen_.16 = private unnamed_addr constant [33 x i8] c"phy_meson_axg_mipi_dphy_of_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 397, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [36 x i8] c"phy_meson_axg_mipi_dphy_regmap_conf\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 176, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 356, i32 17 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 361, i32 32 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 365, i32 44 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 369, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant [28 x i8] c"phy_meson_axg_mipi_dphy_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 325, i32 29 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [49 x i8] c"../drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 385, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant [46 x i8] c"switch.table.phy_meson_axg_mipi_dphy_power_on\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_phy_meson_axg_mipi_dphy_driver_exit, ptr @__initcall__kmod_phy_meson_axg_mipi_dphy__289_410_phy_meson_axg_mipi_dphy_driver_init6, ptr @phy_meson_axg_mipi_dphy_driver_exit, ptr @phy_meson_axg_mipi_dphy_probe._entry, ptr @phy_meson_axg_mipi_dphy_probe._entry_ptr, ptr @phy_meson_axg_mipi_dphy_driver, ptr @.str, ptr @phy_meson_axg_mipi_dphy_of_match, ptr @phy_meson_axg_mipi_dphy_probe._key, ptr @phy_meson_axg_mipi_dphy_regmap_conf, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @phy_meson_axg_mipi_dphy_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @switch.table.phy_meson_axg_mipi_dphy_power_on], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_meson_axg_mipi_dphy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_meson_axg_mipi_dphy_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_meson_axg_mipi_dphy_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_meson_axg_mipi_dphy_regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_meson_axg_mipi_dphy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_meson_axg_mipi_dphy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.phy_meson_axg_mipi_dphy_power_on to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_meson_axg_mipi_dphy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @phy_meson_axg_mipi_dphy_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_meson_axg_mipi_dphy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @phy_meson_axg_mipi_dphy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_meson_axg_mipi_dphy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 120, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call3) #5
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call4, ptr noundef nonnull @phy_meson_axg_mipi_dphy_regmap_conf, ptr noundef nonnull @phy_meson_axg_mipi_dphy_probe._key, ptr noundef nonnull @.str.1) #5
  %regmap = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %regmap, align 4
  %cmp.i99 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #5
  %clk = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call16, ptr %clk, align 4
  %cmp.i100 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %reset = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i, ptr %reset, align 4
  %cmp.i101 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %call30 = tail call ptr @devm_phy_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #5
  %analog = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %analog to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call30, ptr %analog, align 4
  %cmp.i102 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i102, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %call38 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %13 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reset, align 4
  %call43 = tail call i32 @reset_control_deassert(ptr noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  %call47 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @phy_meson_axg_mipi_dphy_ops) #5
  %cmp.i103 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %if.then49, label %if.end53

if.then49:                                        ; preds = %if.end46
  %cmp.not = icmp eq ptr %call47, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then49.cleanup_crit_edge, label %do.end

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call47 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i104 = getelementptr inbounds %struct.device, ptr %call47, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i104 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i104, align 4
  %call54 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #5
  %cmp.i.i = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  %17 = ptrtoint ptr %call54 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %17, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %do.end, %if.then49.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.then33, %if.then26, %if.then19, %if.then12, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %4, %if.then12 ], [ %6, %if.then19 ], [ %8, %if.then26 ], [ %10, %if.then33 ], [ %spec.select.i, %if.end53 ], [ -12, %entry.cleanup_crit_edge ], [ %call38, %if.end36.cleanup_crit_edge ], [ %call43, %if.end41.cleanup_crit_edge ], [ %15, %do.end ], [ -517, %if.then49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %clk) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_meson_axg_mipi_dphy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %analog = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %analog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %analog, align 4
  %call1 = tail call i32 @phy_init(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %reset = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  %call2 = tail call i32 @reset_control_reset(ptr noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_meson_axg_mipi_dphy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %analog = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %analog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %analog, align 4
  %call1 = tail call i32 @phy_exit(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %reset = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  %call2 = tail call i32 @reset_control_reset(ptr noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_meson_axg_mipi_dphy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %analog = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %analog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %analog, align 4
  %call1 = tail call i32 @phy_power_on(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef 1) #5
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 0, i32 noundef 385) #5
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i202 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i203 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i204 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %hs_clk_rate = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 5, i32 22
  %16 = ptrtoint ptr %hs_clk_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hs_clk_rate, align 4
  %div = udiv i32 %17, 1000
  %div13 = udiv i32 100000000, %div
  %mul14 = mul i32 %div13, 80
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %clk_trail = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 5, i32 6
  %20 = ptrtoint ptr %clk_trail to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %clk_trail, align 4
  %add = add i32 %mul14, -1
  %sub = add i32 %add, %21
  %div17 = udiv i32 %sub, %mul14
  %clk_post = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %clk_post to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clk_post, align 4
  %hs_trail = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 5, i32 14
  %24 = ptrtoint ptr %hs_trail to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hs_trail, align 4
  %add21 = add i32 %add, %23
  %sub22 = add i32 %add21, %25
  %div23 = udiv i32 %sub22, %mul14
  %shl = shl i32 %div23, 8
  %or = or i32 %shl, %div17
  %clk_zero = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 5, i32 7
  %26 = ptrtoint ptr %clk_zero to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clk_zero, align 4
  %sub26 = add i32 %add, %27
  %div27 = udiv i32 %sub26, %mul14
  %shl28 = shl i32 %div27, 16
  %or29 = or i32 %or, %shl28
  %clk_prepare = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 5, i32 3
  %28 = ptrtoint ptr %clk_prepare to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clk_prepare, align 4
  %sub32 = add i32 %add, %29
  %div33 = udiv i32 %sub32, %mul14
  %shl34 = shl i32 %div33, 24
  %or35 = or i32 %or29, %shl34
  %call36 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 12, i32 noundef %or35) #5
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %clk_pre = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 5, i32 2
  %32 = ptrtoint ptr %clk_pre to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %clk_pre, align 4
  %sub40 = add i32 %33, 7
  %div41201 = lshr i32 %sub40, 3
  %call42 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 48, i32 noundef %div41201) #5
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %hs_exit = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 5, i32 10
  %36 = ptrtoint ptr %hs_exit to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hs_exit, align 4
  %sub46 = add i32 %add, %37
  %div47 = udiv i32 %sub46, %mul14
  %38 = ptrtoint ptr %hs_trail to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hs_trail, align 4
  %sub51 = add i32 %add, %39
  %div52 = udiv i32 %sub51, %mul14
  %shl53 = shl i32 %div52, 8
  %or54 = or i32 %shl53, %div47
  %hs_zero = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 5, i32 15
  %40 = ptrtoint ptr %hs_zero to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hs_zero, align 4
  %sub57 = add i32 %add, %41
  %div58 = udiv i32 %sub57, %mul14
  %shl59 = shl i32 %div58, 16
  %or60 = or i32 %or54, %shl59
  %hs_prepare = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 5, i32 11
  %42 = ptrtoint ptr %hs_prepare to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hs_prepare, align 4
  %sub63 = add i32 %add, %43
  %div64 = udiv i32 %sub63, %mul14
  %shl65 = shl i32 %div64, 24
  %or66 = or i32 %or60, %shl65
  %call67 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 16, i32 noundef %or66) #5
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %lpx = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 5, i32 17
  %46 = ptrtoint ptr %lpx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lpx, align 4
  %sub71 = add i32 %add, %47
  %div72 = udiv i32 %sub71, %mul14
  %ta_sure = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 5, i32 20
  %48 = ptrtoint ptr %ta_sure to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ta_sure, align 4
  %sub75 = add i32 %add, %49
  %div76 = udiv i32 %sub75, %mul14
  %shl77 = shl i32 %div76, 8
  %or78 = or i32 %shl77, %div72
  %ta_go = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 5, i32 19
  %50 = ptrtoint ptr %ta_go to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ta_go, align 4
  %sub81 = add i32 %add, %51
  %div82 = udiv i32 %sub81, %mul14
  %shl83 = shl i32 %div82, 16
  %or84 = or i32 %or78, %shl83
  %ta_get = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 5, i32 18
  %52 = ptrtoint ptr %ta_get to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ta_get, align 4
  %sub87 = add i32 %add, %53
  %div88 = udiv i32 %sub87, %mul14
  %shl89 = shl i32 %div88, 24
  %or90 = or i32 %or84, %shl89
  %call91 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 20, i32 noundef %or90) #5
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %call93 = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 24, i32 noundef 256) #5
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %init = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 5, i32 16
  %58 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %init, align 4
  %mul96 = mul i32 %59, 1000000
  %sub98 = add i32 %add, %mul96
  %div99 = udiv i32 %sub98, %mul14
  %call100 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 28, i32 noundef %div99) #5
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %wakeup = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 5, i32 21
  %62 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %wakeup, align 4
  %mul103 = mul i32 %63, 1000000
  %sub105 = add i32 %add, %mul103
  %div106 = udiv i32 %sub105, %mul14
  %call107 = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 32, i32 noundef %div106) #5
  %64 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap, align 4
  %call109 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 36, i32 noundef 124) #5
  %66 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap, align 4
  %call111 = tail call i32 @regmap_write(ptr noundef %67, i32 noundef 56, i32 noundef 37500) #5
  %68 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap, align 4
  %call113 = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 40, i32 noundef 4096) #5
  %70 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap, align 4
  %call115 = tail call i32 @regmap_write(ptr noundef %71, i32 noundef 52, i32 noundef 4096) #5
  %lanes = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 5, i32 24
  %72 = ptrtoint ptr %lanes to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %lanes, align 4
  %switch.tableidx = add i8 %73, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %74 = icmp ult i8 %switch.tableidx, 3
  br i1 %74, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %75 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.phy_meson_axg_mipi_dphy_power_on, i32 0, i32 %75
  %76 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %76)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %.sink206 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end.sw.epilog_crit_edge ]
  %77 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap, align 4
  %call127 = tail call i32 @regmap_write(ptr noundef %78, i32 noundef 4, i32 noundef %.sink206) #5
  %79 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap, align 4
  %call.i205 = tail call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef 0, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_meson_axg_mipi_dphy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 4, i32 noundef 15) #5
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef -2147483648) #5
  %analog = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %analog to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %analog, align 4
  %call4 = tail call i32 @phy_power_off(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_meson_axg_mipi_dphy_configure(ptr nocapture noundef readonly %phy, ptr noundef %opts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @phy_mipi_dphy_config_validate(ptr noundef %opts) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %analog = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %analog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %analog, align 4
  %call2 = tail call i32 @phy_configure(ptr noundef %3, ptr noundef %opts) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %config = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %1, i32 0, i32 5
  %4 = call ptr @memcpy(ptr %config, ptr %opts, i32 100)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mipi_dphy_config_validate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_configure(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_phy_meson_axg_mipi_dphy__289_410_phy_meson_axg_mipi_dphy_driver_init6, !1, !"__initcall__kmod_phy_meson_axg_mipi_dphy__289_410_phy_meson_axg_mipi_dphy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c", i32 410, i32 1}
!2 = !{ptr @__exitcall_phy_meson_axg_mipi_dphy_driver_exit, !1, !"__exitcall_phy_meson_axg_mipi_dphy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c", i32 412, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c", i32 413, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c", i32 414, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c", i32 406, i32 12}
!12 = !{ptr @phy_meson_axg_mipi_dphy_driver, !13, !"phy_meson_axg_mipi_dphy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c", i32 403, i32 31}
!14 = !{ptr @phy_meson_axg_mipi_dphy_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c", i32 356, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c", i32 361, i32 32}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c", i32 365, i32 44}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c", i32 369, i32 35}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c", i32 385, i32 4}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @phy_meson_axg_mipi_dphy_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @phy_meson_axg_mipi_dphy_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @phy_meson_axg_mipi_dphy_regmap_conf, !32, !"phy_meson_axg_mipi_dphy_regmap_conf", i1 false, i1 false}
!32 = !{!"../drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c", i32 176, i32 35}
!33 = !{ptr @phy_meson_axg_mipi_dphy_ops, !34, !"phy_meson_axg_mipi_dphy_ops", i1 false, i1 false}
!34 = !{!"../drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c", i32 325, i32 29}
!35 = !{ptr @phy_meson_axg_mipi_dphy_of_match, !36, !"phy_meson_axg_mipi_dphy_of_match", i1 false, i1 false}
!36 = !{!"../drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c", i32 397, i32 34}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
