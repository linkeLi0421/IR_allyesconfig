; ModuleID = '/llk/IR_all_yes/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c_pt.bc'
source_filename = "../drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.phy_g12a_usb3_pcie_priv = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_meson_g12a_usb3_pcie__329_459_phy_g12a_usb3_pcie_driver_init6 = internal global ptr @phy_g12a_usb3_pcie_driver_init, section ".initcall6.init", align 4
@phy_g12a_usb3_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @phy_g12a_usb3_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @phy_g12a_usb3_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_phy_g12a_usb3_pcie_driver_exit = internal global ptr @phy_g12a_usb3_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author330 = internal constant [73 x i8] c"phy_meson_g12a_usb3_pcie.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description331 = internal constant [79 x i8] c"phy_meson_g12a_usb3_pcie.description=Amlogic G12A USB3 + PCIE Combo PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file332 = internal constant [75 x i8] c"phy_meson_g12a_usb3_pcie.file=drivers/phy/amlogic/phy-meson-g12a-usb3-pcie\00", section ".modinfo", align 1
@__UNIQUE_ID_license333 = internal constant [40 x i8] c"phy_meson_g12a_usb3_pcie.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"phy-g12a-usb3-pcie\00", [45 x i8] zeroinitializer }, align 32
@phy_g12a_usb3_pcie_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,g12a-usb3-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@phy_g12a_usb3_pcie_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@phy_g12a_usb3_pcie_regmap_conf = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 20, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"phy_meson_g12a_usb3_pcie:402:(&phy_g12a_usb3_pcie_regmap_conf)->lock\00", [59 x i8] zeroinitializer }, align 32
@phy_g12a_usb3_pcie_probe._key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@phy_g12a_usb3_pcie_cr_regmap_conf = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, ptr null, ptr null, ptr null, ptr @phy_g12a_usb3_pcie_cr_bus_read, ptr @phy_g12a_usb3_pcie_cr_bus_write, ptr null, i8 0, i32 65535, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"phy_meson_g12a_usb3_pcie:407:(&phy_g12a_usb3_pcie_cr_regmap_conf)->lock\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_clk\00", [24 x i8] zeroinitializer }, align 32
@phy_g12a_usb3_pcie_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @phy_g12a_usb3_pcie_init, ptr @phy_g12a_usb3_pcie_exit, ptr @phy_g12a_usb3_pcie_power_on, ptr @phy_g12a_usb3_pcie_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_g12a_usb3_pcie_reset, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@phy_g12a_usb3_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 427, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"phy_g12a_usb3_pcie_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@phy_g12a_usb3_pcie_probe._entry_ptr = internal global ptr @phy_g12a_usb3_pcie_probe._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@phy_g12a_usb3_pcie_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 359, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid number of arguments\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"phy_g12a_usb3_pcie_xlate\00", [39 x i8] zeroinitializer }, align 32
@phy_g12a_usb3_pcie_xlate._entry_ptr = internal global ptr @phy_g12a_usb3_pcie_xlate._entry, section ".printk_index", align 4
@phy_g12a_usb3_pcie_xlate._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.7, i32 366, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid phy mode select argument\0A\00", [62 x i8] zeroinitializer }, align 32
@phy_g12a_usb3_pcie_xlate._entry_ptr.14 = internal global ptr @phy_g12a_usb3_pcie_xlate._entry.12, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.15 = private unnamed_addr constant [26 x i8] c"phy_g12a_usb3_pcie_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 452, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 455, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [28 x i8] c"phy_g12a_usb3_pcie_of_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 446, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [31 x i8] c"phy_g12a_usb3_pcie_regmap_conf\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 64, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 401, i32 17 }
@___asan_gen_.33 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [34 x i8] c"phy_g12a_usb3_pcie_cr_regmap_conf\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 187, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 406, i32 20 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 411, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant [23 x i8] c"phy_g12a_usb3_pcie_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 375, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 427, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 359, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [50 x i8] c"../drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 366, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author330, ptr @__UNIQUE_ID_description331, ptr @__UNIQUE_ID_file332, ptr @__UNIQUE_ID_license333, ptr @__exitcall_phy_g12a_usb3_pcie_driver_exit, ptr @__initcall__kmod_phy_meson_g12a_usb3_pcie__329_459_phy_g12a_usb3_pcie_driver_init6, ptr @phy_g12a_usb3_pcie_driver_exit, ptr @phy_g12a_usb3_pcie_probe._entry, ptr @phy_g12a_usb3_pcie_probe._entry_ptr, ptr @phy_g12a_usb3_pcie_xlate._entry, ptr @phy_g12a_usb3_pcie_xlate._entry.12, ptr @phy_g12a_usb3_pcie_xlate._entry_ptr, ptr @phy_g12a_usb3_pcie_xlate._entry_ptr.14, ptr @phy_g12a_usb3_pcie_driver, ptr @.str, ptr @phy_g12a_usb3_pcie_of_match, ptr @phy_g12a_usb3_pcie_probe._key, ptr @phy_g12a_usb3_pcie_regmap_conf, ptr @.str.1, ptr @phy_g12a_usb3_pcie_probe._key.2, ptr @phy_g12a_usb3_pcie_cr_regmap_conf, ptr @.str.3, ptr @.str.4, ptr @phy_g12a_usb3_pcie_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_g12a_usb3_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_g12a_usb3_pcie_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_g12a_usb3_pcie_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_g12a_usb3_pcie_regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_g12a_usb3_pcie_probe._key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_g12a_usb3_pcie_cr_regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_g12a_usb3_pcie_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_g12a_usb3_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_g12a_usb3_pcie_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_g12a_usb3_pcie_xlate._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_g12a_usb3_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @phy_g12a_usb3_pcie_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_g12a_usb3_pcie_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @phy_g12a_usb3_pcie_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_g12a_usb3_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @phy_g12a_usb3_pcie_regmap_conf, ptr noundef nonnull @phy_g12a_usb3_pcie_probe._key, ptr noundef nonnull @.str.1) #5
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %call.i, align 4
  %cmp.i95 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call15 = tail call ptr @__devm_regmap_init(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull %call.i, ptr noundef nonnull @phy_g12a_usb3_pcie_cr_regmap_conf, ptr noundef nonnull @phy_g12a_usb3_pcie_probe._key.2, ptr noundef nonnull @.str.3) #5
  %regmap_cr = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %regmap_cr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call15, ptr %regmap_cr, align 4
  %cmp.i96 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #5
  %clk_ref = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %clk_ref to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call22, ptr %clk_ref, align 4
  %cmp.i97 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %call.i98 = tail call i32 @clk_prepare(ptr noundef %call22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool.not.i = icmp eq i32 %call.i98, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end28.err_disable_clk_ref_crit_edge

if.end28.err_disable_clk_ref_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disable_clk_ref

if.end.i:                                         ; preds = %if.end28
  %call1.i = tail call i32 @clk_enable(ptr noundef %call22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end33, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call22) #5
  br label %err_disable_clk_ref

if.end33:                                         ; preds = %if.end.i
  %call.i99 = tail call ptr @devm_reset_control_array_get(ptr noundef %dev1, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %reset = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i99, ptr %reset, align 4
  %cmp.i100 = icmp ugt ptr %call.i99, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call.i99 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end33
  %call41 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %1, ptr noundef nonnull @phy_g12a_usb3_pcie_ops) #5
  %phy = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call41, ptr %phy, align 4
  %cmp.i101 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101, label %if.then44, label %if.end49

if.then44:                                        ; preds = %if.end40
  %cmp.not = icmp eq ptr %call41, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then44.cleanup_crit_edge, label %do.end

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call41 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end49:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call41, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call51 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @phy_g12a_usb3_pcie_xlate) #5
  %cmp.i.i = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %call51 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %15, i32 0
  br label %cleanup

err_disable_clk_ref:                              ; preds = %if.then3.i, %if.end28.err_disable_clk_ref_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i98, %if.end28.err_disable_clk_ref_crit_edge ]
  %16 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_ref, align 4
  tail call void @clk_disable(ptr noundef %17) #5
  tail call void @clk_unprepare(ptr noundef %17) #5
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clk_ref, %if.end49, %do.end, %if.then44.cleanup_crit_edge, %if.then37, %if.then25, %if.then18, %if.then10, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %4, %if.then10 ], [ %6, %if.then18 ], [ %8, %if.then25 ], [ %retval.0.i.ph, %err_disable_clk_ref ], [ %10, %if.then37 ], [ %spec.select.i, %if.end49 ], [ -12, %entry.cleanup_crit_edge ], [ %12, %do.end ], [ -517, %if.then44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @phy_g12a_usb3_pcie_xlate(ptr noundef %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %args2 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %args2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args2, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end8 [
    i32 4, label %if.end.if.end10_crit_edge
    i32 2, label %if.end.if.end10_crit_edge19
  ]

if.end.if.end10_crit_edge19:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %if.end.if.end10_crit_edge19
  %mode11 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %mode11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %mode11, align 4
  %phy = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end8, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end8 ], [ %9, %if.end10 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_g12a_usb3_pcie_cr_bus_read(ptr nocapture noundef readonly %context, i32 noundef %addr, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !56
  %call = tail call fastcc i32 @phy_g12a_usb3_pcie_cr_bus_addr(ptr noundef %context, i32 noundef %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %context, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 16, i32 noundef 0) #5
  %3 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 16, i32 noundef 2) #5
  %call4 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call4, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 117) #5
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  %call15175 = call i32 @regmap_read(ptr noundef %6, i32 noundef 20, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15175)
  %tobool16.not176 = icmp eq i32 %call15175, 0
  br i1 %tobool16.not176, label %if.end.lor.lhs.false_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then29.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call21 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call21, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call21, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then29

if.then29:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #5
  %9 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %context, align 4
  %call15 = call i32 @regmap_read(ptr noundef %10, i32 noundef 20, ptr noundef nonnull %val) #5
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then29.lor.lhs.false_crit_edge, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then29.lor.lhs.false_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %11 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %context, align 4
  %call26 = call i32 @regmap_read(ptr noundef %12, i32 noundef 20, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool31.not = icmp eq i32 %call26, 0
  br i1 %tobool31.not, label %for.end.lor.rhs_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and32 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %lor.rhs.cleanup_crit_edge, label %do.end54

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end54:                                         ; preds = %lor.rhs
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and56 = and i32 %16, 65535
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and56, ptr %data, align 4
  %18 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %context, align 4
  %call59 = call i32 @regmap_write(ptr noundef %19, i32 noundef 16, i32 noundef 0) #5
  %call65 = call i64 @ktime_get() #5
  %add.i148 = add i64 %call65, 1000000
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 127) #5
  %20 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %context, align 4
  %call81177 = call i32 @regmap_read(ptr noundef %21, i32 noundef 20, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81177)
  %tobool82.not178 = icmp eq i32 %call81177, 0
  br i1 %tobool82.not178, label %do.end54.lor.lhs.false83_crit_edge, label %do.end54.cleanup_crit_edge

do.end54.cleanup_crit_edge:                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end54.lor.lhs.false83_crit_edge:               ; preds = %do.end54
  br label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %if.then98.lor.lhs.false83_crit_edge, %do.end54.lor.lhs.false83_crit_edge
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %and84 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %lor.lhs.false83.lor.rhs105_crit_edge, label %land.lhs.true89

lor.lhs.false83.lor.rhs105_crit_edge:             ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs105

land.lhs.true89:                                  ; preds = %lor.lhs.false83
  %call90 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call90, i64 %add.i148)
  %cmp3.i150 = icmp sgt i64 %call90, %add.i148
  br i1 %cmp3.i150, label %for.end102, label %if.then98

if.then98:                                        ; preds = %land.lhs.true89
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #5
  %24 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %context, align 4
  %call81 = call i32 @regmap_read(ptr noundef %25, i32 noundef 20, ptr noundef nonnull %val) #5
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then98.lor.lhs.false83_crit_edge, label %if.then98.cleanup_crit_edge

if.then98.cleanup_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then98.lor.lhs.false83_crit_edge:              ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false83

for.end102:                                       ; preds = %land.lhs.true89
  %26 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %context, align 4
  %call95 = call i32 @regmap_read(ptr noundef %27, i32 noundef 20, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool104.not = icmp eq i32 %call95, 0
  br i1 %tobool104.not, label %for.end102.lor.rhs105_crit_edge, label %for.end102.cleanup_crit_edge

for.end102.cleanup_crit_edge:                     ; preds = %for.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end102.lor.rhs105_crit_edge:                  ; preds = %for.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs105

lor.rhs105:                                       ; preds = %for.end102.lor.rhs105_crit_edge, %lor.lhs.false83.lor.rhs105_crit_edge
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %and106 = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  %phi.sel145 = select i1 %tobool107.not, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs105, %for.end102.cleanup_crit_edge, %if.then98.cleanup_crit_edge, %do.end54.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call95, %for.end102.cleanup_crit_edge ], [ %phi.sel145, %lor.rhs105 ], [ %call81177, %do.end54.cleanup_crit_edge ], [ %call15175, %if.end.cleanup_crit_edge ], [ %call26, %for.end.cleanup_crit_edge ], [ -110, %lor.rhs.cleanup_crit_edge ], [ %call81, %if.then98.cleanup_crit_edge ], [ %call15, %if.then29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_g12a_usb3_pcie_cr_bus_write(ptr nocapture noundef readonly %context, i32 noundef %addr, i32 noundef %data) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !56
  %call = tail call fastcc i32 @phy_g12a_usb3_pcie_cr_bus_addr(ptr noundef %context, i32 noundef %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end15, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end15:                                         ; preds = %entry
  %shl = shl i32 %data, 2
  %and16 = and i32 %shl, 262140
  %1 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %context, align 4
  %call17 = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 16, i32 noundef %and16) #5
  %3 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context, align 4
  %call19 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 16, i32 noundef %and16) #5
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  %or = or i32 %and16, 262144
  %call21 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 16, i32 noundef %or) #5
  %call22 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call22, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 154) #5
  %7 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %context, align 4
  %call36384 = call i32 @regmap_read(ptr noundef %8, i32 noundef 20, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36384)
  %tobool37.not385 = icmp eq i32 %call36384, 0
  br i1 %tobool37.not385, label %do.end15.lor.lhs.false_crit_edge, label %do.end15.cleanup_crit_edge

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end15.lor.lhs.false_crit_edge:                 ; preds = %do.end15
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then51.lor.lhs.false_crit_edge, %do.end15.lor.lhs.false_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and38 = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %land.lhs.true, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call43 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call43, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call43, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then51

if.then51:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #5
  %11 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %context, align 4
  %call36 = call i32 @regmap_read(ptr noundef %12, i32 noundef 20, ptr noundef nonnull %val) #5
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then51.lor.lhs.false_crit_edge, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then51.lor.lhs.false_crit_edge:                ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %13 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %context, align 4
  %call48 = call i32 @regmap_read(ptr noundef %14, i32 noundef 20, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool54.not = icmp eq i32 %call48, 0
  br i1 %tobool54.not, label %for.end.lor.end_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and55 = and i32 %16, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %lor.end.cleanup_crit_edge, label %if.end64

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end64:                                         ; preds = %lor.end
  %17 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %context, align 4
  %call66 = call i32 @regmap_write(ptr noundef %18, i32 noundef 16, i32 noundef %and16) #5
  %call72 = call i64 @ktime_get() #5
  %add.i313 = add i64 %call72, 1000000
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 162) #5
  %19 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %context, align 4
  %call88386 = call i32 @regmap_read(ptr noundef %20, i32 noundef 20, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88386)
  %tobool89.not387 = icmp eq i32 %call88386, 0
  br i1 %tobool89.not387, label %if.end64.lor.lhs.false90_crit_edge, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end64.lor.lhs.false90_crit_edge:               ; preds = %if.end64
  br label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %if.then105.lor.lhs.false90_crit_edge, %if.end64.lor.lhs.false90_crit_edge
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %and91 = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %cmp92 = icmp eq i32 %and91, 0
  br i1 %cmp92, label %lor.lhs.false90.lor.end115_crit_edge, label %land.lhs.true96

lor.lhs.false90.lor.end115_crit_edge:             ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end115

land.lhs.true96:                                  ; preds = %lor.lhs.false90
  %call97 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call97, i64 %add.i313)
  %cmp3.i315 = icmp sgt i64 %call97, %add.i313
  br i1 %cmp3.i315, label %for.end109, label %if.then105

if.then105:                                       ; preds = %land.lhs.true96
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #5
  %23 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %context, align 4
  %call88 = call i32 @regmap_read(ptr noundef %24, i32 noundef 20, ptr noundef nonnull %val) #5
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.then105.lor.lhs.false90_crit_edge, label %if.then105.cleanup_crit_edge

if.then105.cleanup_crit_edge:                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then105.lor.lhs.false90_crit_edge:             ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false90

for.end109:                                       ; preds = %land.lhs.true96
  %25 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %context, align 4
  %call102 = call i32 @regmap_read(ptr noundef %26, i32 noundef 20, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool111.not = icmp eq i32 %call102, 0
  br i1 %tobool111.not, label %for.end109.lor.end115_crit_edge, label %for.end109.cleanup_crit_edge

for.end109.cleanup_crit_edge:                     ; preds = %for.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end109.lor.end115_crit_edge:                  ; preds = %for.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end115

lor.end115:                                       ; preds = %for.end109.lor.end115_crit_edge, %lor.lhs.false90.lor.end115_crit_edge
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %and113 = and i32 %28, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %cmp114 = icmp eq i32 %and113, 0
  br i1 %cmp114, label %if.end125, label %lor.end115.cleanup_crit_edge

lor.end115.cleanup_crit_edge:                     ; preds = %lor.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end125:                                        ; preds = %lor.end115
  %29 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %context, align 4
  %call127 = call i32 @regmap_write(ptr noundef %30, i32 noundef 16, i32 noundef %and16) #5
  %31 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %context, align 4
  %or129 = or i32 %and16, 1
  %call130 = call i32 @regmap_write(ptr noundef %32, i32 noundef 16, i32 noundef %or129) #5
  %call136 = call i64 @ktime_get() #5
  %add.i318 = add i64 %call136, 1000000
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 172) #5
  %33 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %context, align 4
  %call152389 = call i32 @regmap_read(ptr noundef %34, i32 noundef 20, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152389)
  %tobool153.not390 = icmp eq i32 %call152389, 0
  br i1 %tobool153.not390, label %if.end125.lor.lhs.false154_crit_edge, label %if.end125.cleanup_crit_edge

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end125.lor.lhs.false154_crit_edge:             ; preds = %if.end125
  br label %lor.lhs.false154

lor.lhs.false154:                                 ; preds = %if.then169.lor.lhs.false154_crit_edge, %if.end125.lor.lhs.false154_crit_edge
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  %and155 = and i32 %36, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %land.lhs.true160, label %lor.lhs.false154.lor.rhs176_crit_edge

lor.lhs.false154.lor.rhs176_crit_edge:            ; preds = %lor.lhs.false154
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs176

land.lhs.true160:                                 ; preds = %lor.lhs.false154
  %call161 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call161, i64 %add.i318)
  %cmp3.i320 = icmp sgt i64 %call161, %add.i318
  br i1 %cmp3.i320, label %for.end173, label %if.then169

if.then169:                                       ; preds = %land.lhs.true160
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #5
  %37 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %context, align 4
  %call152 = call i32 @regmap_read(ptr noundef %38, i32 noundef 20, ptr noundef nonnull %val) #5
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.then169.lor.lhs.false154_crit_edge, label %if.then169.cleanup_crit_edge

if.then169.cleanup_crit_edge:                     ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then169.lor.lhs.false154_crit_edge:            ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false154

for.end173:                                       ; preds = %land.lhs.true160
  %39 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %context, align 4
  %call166 = call i32 @regmap_read(ptr noundef %40, i32 noundef 20, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool175.not = icmp eq i32 %call166, 0
  br i1 %tobool175.not, label %for.end173.lor.rhs176_crit_edge, label %for.end173.cleanup_crit_edge

for.end173.cleanup_crit_edge:                     ; preds = %for.end173
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end173.lor.rhs176_crit_edge:                  ; preds = %for.end173
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs176

lor.rhs176:                                       ; preds = %for.end173.lor.rhs176_crit_edge, %lor.lhs.false154.lor.rhs176_crit_edge
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val, align 4
  %and177 = and i32 %42, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %lor.rhs176.cleanup_crit_edge, label %if.end189

lor.rhs176.cleanup_crit_edge:                     ; preds = %lor.rhs176
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end189:                                        ; preds = %lor.rhs176
  %43 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %context, align 4
  %call191 = call i32 @regmap_write(ptr noundef %44, i32 noundef 16, i32 noundef %and16) #5
  %call197 = call i64 @ktime_get() #5
  %add.i323 = add i64 %call197, 1000000
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 180) #5
  %45 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %context, align 4
  %call213392 = call i32 @regmap_read(ptr noundef %46, i32 noundef 20, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213392)
  %tobool214.not393 = icmp eq i32 %call213392, 0
  br i1 %tobool214.not393, label %if.end189.lor.lhs.false215_crit_edge, label %if.end189.cleanup_crit_edge

if.end189.cleanup_crit_edge:                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end189.lor.lhs.false215_crit_edge:             ; preds = %if.end189
  br label %lor.lhs.false215

lor.lhs.false215:                                 ; preds = %if.then230.lor.lhs.false215_crit_edge, %if.end189.lor.lhs.false215_crit_edge
  %47 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val, align 4
  %and216 = and i32 %48, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %cmp217 = icmp eq i32 %and216, 0
  br i1 %cmp217, label %lor.lhs.false215.lor.rhs237_crit_edge, label %land.lhs.true221

lor.lhs.false215.lor.rhs237_crit_edge:            ; preds = %lor.lhs.false215
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs237

land.lhs.true221:                                 ; preds = %lor.lhs.false215
  %call222 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call222, i64 %add.i323)
  %cmp3.i325 = icmp sgt i64 %call222, %add.i323
  br i1 %cmp3.i325, label %for.end234, label %if.then230

if.then230:                                       ; preds = %land.lhs.true221
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #5
  %49 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %context, align 4
  %call213 = call i32 @regmap_read(ptr noundef %50, i32 noundef 20, ptr noundef nonnull %val) #5
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %if.then230.lor.lhs.false215_crit_edge, label %if.then230.cleanup_crit_edge

if.then230.cleanup_crit_edge:                     ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then230.lor.lhs.false215_crit_edge:            ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false215

for.end234:                                       ; preds = %land.lhs.true221
  %51 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %context, align 4
  %call227 = call i32 @regmap_read(ptr noundef %52, i32 noundef 20, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %tobool236.not = icmp eq i32 %call227, 0
  br i1 %tobool236.not, label %for.end234.lor.rhs237_crit_edge, label %for.end234.cleanup_crit_edge

for.end234.cleanup_crit_edge:                     ; preds = %for.end234
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end234.lor.rhs237_crit_edge:                  ; preds = %for.end234
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs237

lor.rhs237:                                       ; preds = %for.end234.lor.rhs237_crit_edge, %lor.lhs.false215.lor.rhs237_crit_edge
  %53 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val, align 4
  %and238 = and i32 %54, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and238)
  %cmp239 = icmp eq i32 %and238, 0
  %phi.sel310 = select i1 %cmp239, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs237, %for.end234.cleanup_crit_edge, %if.then230.cleanup_crit_edge, %if.end189.cleanup_crit_edge, %lor.rhs176.cleanup_crit_edge, %for.end173.cleanup_crit_edge, %if.then169.cleanup_crit_edge, %if.end125.cleanup_crit_edge, %lor.end115.cleanup_crit_edge, %for.end109.cleanup_crit_edge, %if.then105.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %lor.end.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then51.cleanup_crit_edge, %do.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call227, %for.end234.cleanup_crit_edge ], [ %phi.sel310, %lor.rhs237 ], [ %call213392, %if.end189.cleanup_crit_edge ], [ -110, %lor.end.cleanup_crit_edge ], [ %call36384, %do.end15.cleanup_crit_edge ], [ %call48, %for.end.cleanup_crit_edge ], [ -110, %lor.end115.cleanup_crit_edge ], [ %call88386, %if.end64.cleanup_crit_edge ], [ %call102, %for.end109.cleanup_crit_edge ], [ %call152389, %if.end125.cleanup_crit_edge ], [ %call166, %for.end173.cleanup_crit_edge ], [ -110, %lor.rhs176.cleanup_crit_edge ], [ %call213, %if.then230.cleanup_crit_edge ], [ %call152, %if.then169.cleanup_crit_edge ], [ %call88, %if.then105.cleanup_crit_edge ], [ %call36, %if.then51.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @phy_g12a_usb3_pcie_cr_bus_addr(ptr nocapture noundef readonly %priv, i32 noundef %addr) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !56
  %shl = shl i32 %addr, 2
  %and13 = and i32 %shl, 262140
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %call = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 16, i32 noundef %and13) #5
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %call15 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 16, i32 noundef %and13) #5
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %or = or i32 %and13, 524288
  %call17 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 16, i32 noundef %or) #5
  %call18 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call18, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 86) #5
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %call32181 = call i32 @regmap_read(ptr noundef %8, i32 noundef 20, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32181)
  %tobool33.not182 = icmp eq i32 %call32181, 0
  br i1 %tobool33.not182, label %entry.lor.lhs.false_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then47.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and34 = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call39 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call39, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call39, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then47

if.then47:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #5
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %call32 = call i32 @regmap_read(ptr noundef %12, i32 noundef 20, ptr noundef nonnull %val) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then47.lor.lhs.false_crit_edge, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then47.lor.lhs.false_crit_edge:                ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %call44 = call i32 @regmap_read(ptr noundef %14, i32 noundef 20, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool50.not = icmp eq i32 %call44, 0
  br i1 %tobool50.not, label %for.end.lor.rhs_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and51 = and i32 %16, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %lor.rhs.cleanup_crit_edge, label %if.end60

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end60:                                         ; preds = %lor.rhs
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 4
  %call62 = call i32 @regmap_write(ptr noundef %18, i32 noundef 16, i32 noundef %and13) #5
  %call68 = call i64 @ktime_get() #5
  %add.i154 = add i64 %call68, 1000000
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 94) #5
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %call84183 = call i32 @regmap_read(ptr noundef %20, i32 noundef 20, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84183)
  %tobool85.not184 = icmp eq i32 %call84183, 0
  br i1 %tobool85.not184, label %if.end60.lor.lhs.false86_crit_edge, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end60.lor.lhs.false86_crit_edge:               ; preds = %if.end60
  br label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %if.then101.lor.lhs.false86_crit_edge, %if.end60.lor.lhs.false86_crit_edge
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %and87 = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %lor.lhs.false86.lor.rhs108_crit_edge, label %land.lhs.true92

lor.lhs.false86.lor.rhs108_crit_edge:             ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs108

land.lhs.true92:                                  ; preds = %lor.lhs.false86
  %call93 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call93, i64 %add.i154)
  %cmp3.i156 = icmp sgt i64 %call93, %add.i154
  br i1 %cmp3.i156, label %for.end105, label %if.then101

if.then101:                                       ; preds = %land.lhs.true92
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #5
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 4
  %call84 = call i32 @regmap_read(ptr noundef %24, i32 noundef 20, ptr noundef nonnull %val) #5
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then101.lor.lhs.false86_crit_edge, label %if.then101.cleanup_crit_edge

if.then101.cleanup_crit_edge:                     ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then101.lor.lhs.false86_crit_edge:             ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false86

for.end105:                                       ; preds = %land.lhs.true92
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 4
  %call98 = call i32 @regmap_read(ptr noundef %26, i32 noundef 20, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool107.not = icmp eq i32 %call98, 0
  br i1 %tobool107.not, label %for.end105.lor.rhs108_crit_edge, label %for.end105.cleanup_crit_edge

for.end105.cleanup_crit_edge:                     ; preds = %for.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end105.lor.rhs108_crit_edge:                  ; preds = %for.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs108

lor.rhs108:                                       ; preds = %for.end105.lor.rhs108_crit_edge, %lor.lhs.false86.lor.rhs108_crit_edge
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %and109 = and i32 %28, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  %phi.sel151 = select i1 %tobool110.not, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs108, %for.end105.cleanup_crit_edge, %if.then101.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then47.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call98, %for.end105.cleanup_crit_edge ], [ %phi.sel151, %lor.rhs108 ], [ %call84183, %if.end60.cleanup_crit_edge ], [ %call32181, %entry.cleanup_crit_edge ], [ %call44, %for.end.cleanup_crit_edge ], [ -110, %lor.rhs.cleanup_crit_edge ], [ %call84, %if.then101.cleanup_crit_edge ], [ %call32, %if.then47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_g12a_usb3_pcie_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #5
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %data.i, align 4, !annotation !56
  %reset.i = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset.i, align 4
  %call1.i = tail call i32 @reset_control_reset(ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.phy_g12a_usb3_init.exit_crit_edge

if.then.phy_g12a_usb3_init.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_g12a_usb3_init.exit

if.end.i:                                         ; preds = %if.then
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef 96, i32 noundef 96, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %regmap_cr.i = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regmap_cr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap_cr.i, align 4
  %call.i120.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 4141, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.i)
  %tobool4.not.i = icmp eq i32 %call.i120.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.phy_g12a_usb3_init.exit_crit_edge

if.end.i.phy_g12a_usb3_init.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_g12a_usb3_init.exit

if.end6.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %regmap_cr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap_cr.i, align 4
  %call.i121.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 4112, i32 noundef 4080, i32 noundef 20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121.i)
  %tobool9.not.i = icmp eq i32 %call.i121.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end6.i.phy_g12a_usb3_init.exit_crit_edge

if.end6.i.phy_g12a_usb3_init.exit_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_g12a_usb3_init.exit

if.end11.i:                                       ; preds = %if.end6.i
  %13 = ptrtoint ptr %regmap_cr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap_cr.i, align 4
  %call13.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 4102, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end11.i.phy_g12a_usb3_init.exit_crit_edge

if.end11.i.phy_g12a_usb3_init.exit_crit_edge:     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_g12a_usb3_init.exit

if.end16.i:                                       ; preds = %if.end11.i
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data.i, align 4
  %and.i = and i32 %16, -4033
  %or19.i = or i32 %and.i, 2944
  store i32 %or19.i, ptr %data.i, align 4
  %17 = ptrtoint ptr %regmap_cr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap_cr.i, align 4
  %call21.i = call i32 @regmap_write(ptr noundef %18, i32 noundef 4102, i32 noundef %or19.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end16.i.phy_g12a_usb3_init.exit_crit_edge

if.end16.i.phy_g12a_usb3_init.exit_crit_edge:     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_g12a_usb3_init.exit

if.end24.i:                                       ; preds = %if.end16.i
  %19 = ptrtoint ptr %regmap_cr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap_cr.i, align 4
  %call26.i = call i32 @regmap_read(ptr noundef %20, i32 noundef 4098, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end24.i.phy_g12a_usb3_init.exit_crit_edge

if.end24.i.phy_g12a_usb3_init.exit_crit_edge:     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_g12a_usb3_init.exit

if.end29.i:                                       ; preds = %if.end24.i
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data.i, align 4
  %and30.i = and i32 %22, -32768
  %or33.i = or i32 %and30.i, 19327
  store i32 %or33.i, ptr %data.i, align 4
  %23 = ptrtoint ptr %regmap_cr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap_cr.i, align 4
  %call35.i = call i32 @regmap_write(ptr noundef %24, i32 noundef 4098, i32 noundef %or33.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end29.i.phy_g12a_usb3_init.exit_crit_edge

if.end29.i.phy_g12a_usb3_init.exit_crit_edge:     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_g12a_usb3_init.exit

if.end38.i:                                       ; preds = %if.end29.i
  %25 = ptrtoint ptr %regmap_cr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap_cr.i, align 4
  %call.i122.i = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 48, i32 noundef 240, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122.i)
  %tobool41.not.i = icmp eq i32 %call.i122.i, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %if.end38.i.phy_g12a_usb3_init.exit_crit_edge

if.end38.i.phy_g12a_usb3_init.exit_crit_edge:     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_g12a_usb3_init.exit

if.end43.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.i123.i = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 8, i32 noundef 1835008, i32 noundef 1048576, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call.i124.i = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 4, i32 noundef 16711680, i32 noundef 8978432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %phy_g12a_usb3_init.exit

phy_g12a_usb3_init.exit:                          ; preds = %if.end43.i, %if.end38.i.phy_g12a_usb3_init.exit_crit_edge, %if.end29.i.phy_g12a_usb3_init.exit_crit_edge, %if.end24.i.phy_g12a_usb3_init.exit_crit_edge, %if.end16.i.phy_g12a_usb3_init.exit_crit_edge, %if.end11.i.phy_g12a_usb3_init.exit_crit_edge, %if.end6.i.phy_g12a_usb3_init.exit_crit_edge, %if.end.i.phy_g12a_usb3_init.exit_crit_edge, %if.then.phy_g12a_usb3_init.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end43.i ], [ %call1.i, %if.then.phy_g12a_usb3_init.exit_crit_edge ], [ %call.i120.i, %if.end.i.phy_g12a_usb3_init.exit_crit_edge ], [ %call.i121.i, %if.end6.i.phy_g12a_usb3_init.exit_crit_edge ], [ %call13.i, %if.end11.i.phy_g12a_usb3_init.exit_crit_edge ], [ %call21.i, %if.end16.i.phy_g12a_usb3_init.exit_crit_edge ], [ %call26.i, %if.end24.i.phy_g12a_usb3_init.exit_crit_edge ], [ %call35.i, %if.end29.i.phy_g12a_usb3_init.exit_crit_edge ], [ %call.i122.i, %if.end38.i.phy_g12a_usb3_init.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #5
  br label %cleanup

cleanup:                                          ; preds = %phy_g12a_usb3_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %phy_g12a_usb3_init.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_g12a_usb3_pcie_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %reset = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  %call1 = tail call i32 @reset_control_reset(ptr noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_g12a_usb3_pcie_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 31, i32 noundef 28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_g12a_usb3_pcie_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 31, i32 noundef 29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_g12a_usb3_pcie_reset(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %reset = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 107374000) #5
  %7 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reset, align 4
  %call5 = tail call i32 @reset_control_deassert(ptr noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 107374000) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_phy_meson_g12a_usb3_pcie__329_459_phy_g12a_usb3_pcie_driver_init6, !1, !"__initcall__kmod_phy_meson_g12a_usb3_pcie__329_459_phy_g12a_usb3_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c", i32 459, i32 1}
!2 = !{ptr @__exitcall_phy_g12a_usb3_pcie_driver_exit, !1, !"__exitcall_phy_g12a_usb3_pcie_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author330, !4, !"__UNIQUE_ID_author330", i1 false, i1 false}
!4 = !{!"../drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c", i32 461, i32 1}
!5 = !{ptr @__UNIQUE_ID_description331, !6, !"__UNIQUE_ID_description331", i1 false, i1 false}
!6 = !{!"../drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c", i32 462, i32 1}
!7 = !{ptr @__UNIQUE_ID_file332, !8, !"__UNIQUE_ID_file332", i1 false, i1 false}
!8 = !{!"../drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c", i32 463, i32 1}
!9 = !{ptr @__UNIQUE_ID_license333, !8, !"__UNIQUE_ID_license333", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c", i32 455, i32 12}
!12 = !{ptr @phy_g12a_usb3_pcie_driver, !13, !"phy_g12a_usb3_pcie_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c", i32 452, i32 31}
!14 = !{ptr @phy_g12a_usb3_pcie_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c", i32 401, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @phy_g12a_usb3_pcie_probe._key.2, !18, !"_key", i1 false, i1 false}
!18 = !{!"../drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c", i32 406, i32 20}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c", i32 411, i32 36}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c", i32 427, i32 4}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @phy_g12a_usb3_pcie_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @phy_g12a_usb3_pcie_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @phy_g12a_usb3_pcie_regmap_conf, !31, !"phy_g12a_usb3_pcie_regmap_conf", i1 false, i1 false}
!31 = !{!"../drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c", i32 64, i32 35}
!32 = !{ptr @phy_g12a_usb3_pcie_cr_regmap_conf, !33, !"phy_g12a_usb3_pcie_cr_regmap_conf", i1 false, i1 false}
!33 = !{!"../drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c", i32 187, i32 35}
!34 = !{ptr @phy_g12a_usb3_pcie_ops, !35, !"phy_g12a_usb3_pcie_ops", i1 false, i1 false}
!35 = !{!"../drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c", i32 375, i32 29}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c", i32 359, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @phy_g12a_usb3_pcie_xlate._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @phy_g12a_usb3_pcie_xlate._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c", i32 366, i32 3}
!43 = !{ptr @phy_g12a_usb3_pcie_xlate._entry.12, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @phy_g12a_usb3_pcie_xlate._entry_ptr.14, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @phy_g12a_usb3_pcie_of_match, !46, !"phy_g12a_usb3_pcie_of_match", i1 false, i1 false}
!46 = !{!"../drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c", i32 446, i32 34}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"auto-init"}
