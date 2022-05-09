; ModuleID = '/llk/IR_all_yes/drivers/phy/socionext/phy-uniphier-ahci.c_pt.bc'
source_filename = "../drivers/phy/socionext/phy-uniphier-ahci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uniphier_ahciphy_soc_data = type { ptr, ptr, ptr, i8, i8, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.uniphier_ahciphy_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_phy_uniphier_ahci__384_510_uniphier_ahciphy_driver_init6 = internal global ptr @uniphier_ahciphy_driver_init, section ".initcall6.init", align 4
@uniphier_ahciphy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_ahciphy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_ahciphy_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uniphier_ahciphy_driver_exit = internal global ptr @uniphier_ahciphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author385 = internal constant [75 x i8] c"phy_uniphier_ahci.author=Kunihiko Hayashi <hayashi.kunihiko@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description386 = internal constant [70 x i8] c"phy_uniphier_ahci.description=UniPhier PHY driver for AHCI controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file387 = internal constant [63 x i8] c"phy_uniphier_ahci.file=drivers/phy/socionext/phy-uniphier-ahci\00", section ".modinfo", align 1
@__UNIQUE_ID_license388 = internal constant [33 x i8] c"phy_uniphier_ahci.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uniphier-ahci-phy\00", [46 x i8] zeroinitializer }, align 32
@uniphier_ahciphy_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-ahci-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-ahci-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-ahci-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs3_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/phy/socionext/phy-uniphier-ahci.c\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gio\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pm\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@uniphier_ahciphy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @uniphier_ahciphy_init, ptr @uniphier_ahciphy_exit, ptr @uniphier_ahciphy_power_on, ptr @uniphier_ahciphy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@uniphier_ahciphy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.1, i32 449, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create phy\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uniphier_ahciphy_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uniphier_ahciphy_probe._entry_ptr = internal global ptr @uniphier_ahciphy_probe._entry, section ".printk_index", align 4
@uniphier_pro4_data = internal constant { %struct.uniphier_ahciphy_soc_data, [16 x i8] } { %struct.uniphier_ahciphy_soc_data { ptr @uniphier_ahciphy_pro4_init, ptr @uniphier_ahciphy_pro4_power_on, ptr @uniphier_ahciphy_pro4_power_off, i8 1, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@uniphier_pxs2_data = internal constant { %struct.uniphier_ahciphy_soc_data, [16 x i8] } { %struct.uniphier_ahciphy_soc_data { ptr null, ptr @uniphier_ahciphy_pxs2_power_on, ptr @uniphier_ahciphy_pxs2_power_off, i8 0, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@uniphier_pxs3_data = internal constant { %struct.uniphier_ahciphy_soc_data, [16 x i8] } { %struct.uniphier_ahciphy_soc_data { ptr @uniphier_ahciphy_pxs3_init, ptr @uniphier_ahciphy_pxs2_power_on, ptr @uniphier_ahciphy_pxs2_power_off, i8 0, i8 1, i8 1 }, [16 x i8] zeroinitializer }, align 32
@uniphier_ahciphy_pro4_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.1, i32 131, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to check whether Rx is ready\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"uniphier_ahciphy_pro4_power_on\00", [33 x i8] zeroinitializer }, align 32
@uniphier_ahciphy_pro4_power_on._entry_ptr = internal global ptr @uniphier_ahciphy_pro4_power_on._entry, section ".printk_index", align 4
@uniphier_ahciphy_pro4_power_on._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.1, i32 138, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to release PM reset\0A\00", [36 x i8] zeroinitializer }, align 32
@uniphier_ahciphy_pro4_power_on._entry_ptr.16 = internal global ptr @uniphier_ahciphy_pro4_power_on._entry.14, section ".printk_index", align 4
@uniphier_ahciphy_pro4_power_on._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.1, i32 144, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to release Tx reset\0A\00", [36 x i8] zeroinitializer }, align 32
@uniphier_ahciphy_pro4_power_on._entry_ptr.19 = internal global ptr @uniphier_ahciphy_pro4_power_on._entry.17, section ".printk_index", align 4
@uniphier_ahciphy_pro4_power_on._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.1, i32 150, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to release Rx reset\0A\00", [36 x i8] zeroinitializer }, align 32
@uniphier_ahciphy_pro4_power_on._entry_ptr.22 = internal global ptr @uniphier_ahciphy_pro4_power_on._entry.20, section ".printk_index", align 4
@uniphier_ahciphy_pxs2_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.1, i32 231, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to check whether PHY PLL is ready\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"uniphier_ahciphy_pxs2_power_on\00", [33 x i8] zeroinitializer }, align 32
@uniphier_ahciphy_pxs2_power_on._entry_ptr = internal global ptr @uniphier_ahciphy_pxs2_power_on._entry, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant [24 x i8] c"uniphier_ahciphy_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 503, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 506, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [23 x i8] c"uniphier_ahciphy_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 486, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 400, i32 6 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 407, i32 39 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 412, i32 33 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 426, i32 44 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 434, i32 53 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 438, i32 53 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 442, i32 53 }
@___asan_gen_.55 = private unnamed_addr constant [21 x i8] c"uniphier_ahciphy_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 379, i32 29 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 449, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c"uniphier_pro4_data\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 461, i32 47 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"uniphier_pxs2_data\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 469, i32 47 }
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"uniphier_pxs3_data\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 477, i32 47 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 131, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 138, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 144, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 150, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [45 x i8] c"../drivers/phy/socionext/phy-uniphier-ahci.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 231, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author385, ptr @__UNIQUE_ID_description386, ptr @__UNIQUE_ID_file387, ptr @__UNIQUE_ID_license388, ptr @__exitcall_uniphier_ahciphy_driver_exit, ptr @__initcall__kmod_phy_uniphier_ahci__384_510_uniphier_ahciphy_driver_init6, ptr @uniphier_ahciphy_driver_exit, ptr @uniphier_ahciphy_pro4_power_on._entry, ptr @uniphier_ahciphy_pro4_power_on._entry.14, ptr @uniphier_ahciphy_pro4_power_on._entry.17, ptr @uniphier_ahciphy_pro4_power_on._entry.20, ptr @uniphier_ahciphy_pro4_power_on._entry_ptr, ptr @uniphier_ahciphy_pro4_power_on._entry_ptr.16, ptr @uniphier_ahciphy_pro4_power_on._entry_ptr.19, ptr @uniphier_ahciphy_pro4_power_on._entry_ptr.22, ptr @uniphier_ahciphy_probe._entry, ptr @uniphier_ahciphy_probe._entry_ptr, ptr @uniphier_ahciphy_pxs2_power_on._entry, ptr @uniphier_ahciphy_pxs2_power_on._entry_ptr, ptr @uniphier_ahciphy_driver, ptr @.str, ptr @uniphier_ahciphy_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @uniphier_ahciphy_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @uniphier_pro4_data, ptr @uniphier_pxs2_data, ptr @uniphier_pxs3_data, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ahciphy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ahciphy_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ahciphy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ahciphy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pro4_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pxs2_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pxs3_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ahciphy_pro4_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ahciphy_pro4_power_on._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ahciphy_pro4_power_on._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ahciphy_pro4_power_on._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ahciphy_pxs2_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_ahciphy_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_ahciphy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_ahciphy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %data = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %call.i, i32 0, i32 11
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %data, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %do.end, label %if.end30, !prof !76

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 400, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %call31 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call31, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end30
  %call38 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #5
  %clk_parent = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %clk_parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call38, ptr %clk_parent, align 4
  %cmp.i181 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call38 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end37
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %is_phy_clk = getelementptr inbounds %struct.uniphier_ahciphy_soc_data, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %is_phy_clk to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_phy_clk, align 2, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool46.not = icmp eq i8 %9, 0
  br i1 %tobool46.not, label %if.end44.if.end55_crit_edge, label %if.then47

if.end44.if.end55_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then47:                                        ; preds = %if.end44
  %call48 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #5
  %clk = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call48, ptr %clk, align 4
  %cmp.i182 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i182, label %if.then51, label %if.then47.if.end55_crit_edge

if.then47.if.end55_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then51:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call48 to i32
  br label %cleanup

if.end55:                                         ; preds = %if.then47.if.end55_crit_edge, %if.end44.if.end55_crit_edge
  %call.i183 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %rst_parent = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %rst_parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i183, ptr %rst_parent, align 4
  %cmp.i184 = icmp ugt ptr %call.i183, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call.i183 to i32
  br label %cleanup

if.end62:                                         ; preds = %if.end55
  %call.i185 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %rst = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i185, ptr %rst, align 4
  %cmp.i186 = icmp ugt ptr %call.i185, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186, label %if.then66, label %if.end69

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call.i185 to i32
  br label %cleanup

if.end69:                                         ; preds = %if.end62
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %is_legacy = getelementptr inbounds %struct.uniphier_ahciphy_soc_data, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %is_legacy to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_legacy, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool71.not = icmp eq i8 %19, 0
  br i1 %tobool71.not, label %if.end69.if.end108_crit_edge, label %if.then72

if.end69.if.end108_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

if.then72:                                        ; preds = %if.end69
  %call73 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #5
  %clk_parent_gio = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %clk_parent_gio to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call73, ptr %clk_parent_gio, align 4
  %cmp.i187 = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i187, label %if.then76, label %if.end79

if.then76:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call73 to i32
  br label %cleanup

if.end79:                                         ; preds = %if.then72
  %call.i188 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %rst_parent_gio = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %rst_parent_gio to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i188, ptr %rst_parent_gio, align 4
  %cmp.i189 = icmp ugt ptr %call.i188, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i189, label %if.then83, label %if.end86

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %call.i188 to i32
  br label %cleanup

if.end86:                                         ; preds = %if.end79
  %call.i190 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %rst_pm = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %call.i, i32 0, i32 8
  %24 = ptrtoint ptr %rst_pm to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i190, ptr %rst_pm, align 4
  %cmp.i191 = icmp ugt ptr %call.i190, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191, label %if.then90, label %if.end93

if.then90:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %call.i190 to i32
  br label %cleanup

if.end93:                                         ; preds = %if.end86
  %call.i192 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %rst_tx = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %call.i, i32 0, i32 9
  %26 = ptrtoint ptr %rst_tx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i192, ptr %rst_tx, align 4
  %cmp.i193 = icmp ugt ptr %call.i192, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i193, label %if.then97, label %if.end100

if.then97:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %call.i192 to i32
  br label %cleanup

if.end100:                                        ; preds = %if.end93
  %call.i194 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %rst_rx = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %call.i, i32 0, i32 10
  %28 = ptrtoint ptr %rst_rx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i194, ptr %rst_rx, align 4
  %cmp.i195 = icmp ugt ptr %call.i194, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i195, label %if.then104, label %if.end100.if.end108_crit_edge

if.end100.if.end108_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

if.then104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %call.i194 to i32
  br label %cleanup

if.end108:                                        ; preds = %if.end100.if.end108_crit_edge, %if.end69.if.end108_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  %call109 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %31, ptr noundef nonnull @uniphier_ahciphy_ops) #5
  %cmp.i196 = icmp ugt ptr %call109, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i196, label %do.end114, label %if.end116

do.end114:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  %32 = ptrtoint ptr %call109 to i32
  br label %cleanup

if.end116:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call109, i32 0, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call117 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #5
  %cmp.i197 = icmp ugt ptr %call117, inttoptr (i32 -4096 to ptr)
  %34 = ptrtoint ptr %call117 to i32
  %spec.select = select i1 %cmp.i197, i32 %34, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %do.end114, %if.then104, %if.then97, %if.then90, %if.then83, %if.then76, %if.then66, %if.then59, %if.then51, %if.then41, %if.then34, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %3, %if.then34 ], [ %5, %if.then41 ], [ %11, %if.then51 ], [ %13, %if.then59 ], [ %15, %if.then66 ], [ %21, %if.then76 ], [ %23, %if.then83 ], [ %25, %if.then90 ], [ %27, %if.then97 ], [ %29, %if.then104 ], [ %32, %do.end114 ], [ -12, %entry.cleanup_crit_edge ], [ %spec.select, %if.end116 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk_parent_gio = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk_parent_gio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_parent_gio, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %clk_parent = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_parent, align 4
  %call.i46 = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool.not.i47 = icmp eq i32 %call.i46, 0
  br i1 %tobool.not.i47, label %if.end.i50, label %if.end.out_clk_gio_disable_crit_edge

if.end.out_clk_gio_disable_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clk_gio_disable

if.end.i50:                                       ; preds = %if.end
  %call1.i48 = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool2.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool2.not.i49, label %if.end5, label %if.end.i50.out_clk_gio_disable.sink.split_crit_edge

if.end.i50.out_clk_gio_disable.sink.split_crit_edge: ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clk_gio_disable.sink.split

if.end5:                                          ; preds = %if.end.i50
  %rst_parent_gio = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %rst_parent_gio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst_parent_gio, align 4
  %call6 = tail call i32 @reset_control_deassert(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_clk_disable_crit_edge

if.end5.out_clk_disable_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clk_disable

if.end9:                                          ; preds = %if.end5
  %rst_parent = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %rst_parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rst_parent, align 4
  %call10 = tail call i32 @reset_control_deassert(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_rst_gio_assert_crit_edge

if.end9.out_rst_gio_assert_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_rst_gio_assert

if.end13:                                         ; preds = %if.end9
  %data = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  %call18 = tail call i32 %13(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then15.cleanup_crit_edge, label %out_rst_assert

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

out_rst_assert:                                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %rst_parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rst_parent, align 4
  %call24 = tail call i32 @reset_control_assert(ptr noundef %15) #5
  br label %out_rst_gio_assert

out_rst_gio_assert:                               ; preds = %out_rst_assert, %if.end9.out_rst_gio_assert_crit_edge
  %ret.0 = phi i32 [ %call10, %if.end9.out_rst_gio_assert_crit_edge ], [ %call18, %out_rst_assert ]
  %16 = ptrtoint ptr %rst_parent_gio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rst_parent_gio, align 4
  %call26 = tail call i32 @reset_control_assert(ptr noundef %17) #5
  br label %out_clk_disable

out_clk_disable:                                  ; preds = %out_rst_gio_assert, %if.end5.out_clk_disable_crit_edge
  %ret.1 = phi i32 [ %call6, %if.end5.out_clk_disable_crit_edge ], [ %ret.0, %out_rst_gio_assert ]
  %18 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_parent, align 4
  tail call void @clk_disable(ptr noundef %19) #5
  br label %out_clk_gio_disable.sink.split

out_clk_gio_disable.sink.split:                   ; preds = %out_clk_disable, %if.end.i50.out_clk_gio_disable.sink.split_crit_edge
  %.sink = phi ptr [ %19, %out_clk_disable ], [ %5, %if.end.i50.out_clk_gio_disable.sink.split_crit_edge ]
  %ret.2.ph = phi i32 [ %ret.1, %out_clk_disable ], [ %call1.i48, %if.end.i50.out_clk_gio_disable.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #5
  br label %out_clk_gio_disable

out_clk_gio_disable:                              ; preds = %out_clk_gio_disable.sink.split, %if.end.out_clk_gio_disable_crit_edge
  %ret.2 = phi i32 [ %call.i46, %if.end.out_clk_gio_disable_crit_edge ], [ %ret.2.ph, %out_clk_gio_disable.sink.split ]
  %20 = ptrtoint ptr %clk_parent_gio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk_parent_gio, align 4
  tail call void @clk_disable(ptr noundef %21) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_clk_gio_disable, %if.end.i.cleanup.sink.split_crit_edge
  %.sink58 = phi ptr [ %21, %out_clk_gio_disable ], [ %3, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.2, %out_clk_gio_disable ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink58) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then15.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then15.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rst_parent = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %rst_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst_parent, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #5
  %rst_parent_gio = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %rst_parent_gio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst_parent_gio, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %5) #5
  %clk_parent = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_parent, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  %clk_parent_gio = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %clk_parent_gio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_parent_gio, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %rst = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst, align 4
  %call2 = tail call i32 @reset_control_deassert(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_clk_disable_crit_edge

if.end.out_clk_disable_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clk_disable

if.end5:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %power_on = getelementptr inbounds %struct.uniphier_ahciphy_soc_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %power_on to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %power_on, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  %call10 = tail call i32 %9(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then7.cleanup_crit_edge, label %out_reset_assert

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

out_reset_assert:                                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rst, align 4
  %call16 = tail call i32 @reset_control_assert(ptr noundef %11) #5
  br label %out_clk_disable

out_clk_disable:                                  ; preds = %out_reset_assert, %if.end.out_clk_disable_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.out_clk_disable_crit_edge ], [ %call10, %out_reset_assert ]
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %13) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_clk_disable, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %13, %out_clk_disable ], [ %3, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.0, %out_clk_disable ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then7.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %power_off = getelementptr inbounds %struct.uniphier_ahciphy_soc_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %power_off to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power_off, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 %5(ptr noundef %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %rst = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst, align 4
  %call4 = tail call i32 @reset_control_assert(ptr noundef %7) #5
  %clk = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_pro4_init(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  %3 = and i32 %2, 16711679
  %4 = or i32 %3, 1761607680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #5, !srcloc !81
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr59 = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %10 = and i32 %9, -2039553
  %11 = or i32 %10, 397312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr103 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %11) #5, !srcloc !81
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr107 = getelementptr i8, ptr %15, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr107) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %17 = and i32 %16, -209649917
  %18 = or i32 %17, 3473612
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr205 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr205, i32 %18) #5, !srcloc !81
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_pro4_power_on(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %3 = and i32 %2, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #5, !srcloc !81
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  %9 = or i32 %8, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %9) #5, !srcloc !81
  %call16 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call16, 2000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 129) #5
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr30153 = getelementptr i8, ptr %13, i32 48
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30153) #5, !srcloc !78
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and34154 = and i32 %15, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34154)
  %tobool.not155 = icmp eq i32 %and34154, 0
  br i1 %tobool.not155, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true:                                    ; preds = %if.then51.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call38 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call38, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call38, %add.i
  br i1 %cmp3.i, label %if.then41, label %if.then51

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr45 = getelementptr i8, ptr %17, i32 48
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #5, !srcloc !78
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  br label %for.end

if.then51:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 51, i32 noundef 200, i32 noundef 2) #5
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr30 = getelementptr i8, ptr %21, i32 48
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #5, !srcloc !78
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %and34 = and i32 %23, 262144
  %tobool.not = icmp eq i32 %and34, 0
  br i1 %tobool.not, label %if.then51.for.end_crit_edge, label %if.then51.land.lhs.true_crit_edge

if.then51.land.lhs.true_crit_edge:                ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.then51.for.end_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.then51.for.end_crit_edge, %if.then41, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %19, %if.then41 ], [ %15, %entry.for.end_crit_edge ], [ %23, %if.then51.for.end_crit_edge ]
  %and54 = and i32 %val.0, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end61, label %do.end60

do.end60:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.12) #8
  br label %out_disable_clock

if.end61:                                         ; preds = %for.end
  %rst_pm = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %priv, i32 0, i32 8
  %26 = ptrtoint ptr %rst_pm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rst_pm, align 4
  %call62 = tail call i32 @reset_control_deassert(ptr noundef %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end69, label %do.end67

do.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.15) #8
  br label %out_disable_clock

if.end69:                                         ; preds = %if.end61
  %rst_tx = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %priv, i32 0, i32 9
  %30 = ptrtoint ptr %rst_tx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rst_tx, align 4
  %call70 = tail call i32 @reset_control_deassert(ptr noundef %31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end77, label %do.end75

do.end75:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.18) #8
  br label %out_reset_pm_assert

if.end77:                                         ; preds = %if.end69
  %rst_rx = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %priv, i32 0, i32 10
  %34 = ptrtoint ptr %rst_rx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rst_rx, align 4
  %call78 = tail call i32 @reset_control_deassert(ptr noundef %35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end77.cleanup_crit_edge, label %do.end83

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end83:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.21) #8
  %38 = ptrtoint ptr %rst_tx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rst_tx, align 4
  %call87 = tail call i32 @reset_control_assert(ptr noundef %39) #5
  br label %out_reset_pm_assert

out_reset_pm_assert:                              ; preds = %do.end83, %do.end75
  %ret.0 = phi i32 [ %call70, %do.end75 ], [ %call78, %do.end83 ]
  %40 = ptrtoint ptr %rst_pm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rst_pm, align 4
  %call89 = tail call i32 @reset_control_assert(ptr noundef %41) #5
  br label %out_disable_clock

out_disable_clock:                                ; preds = %out_reset_pm_assert, %do.end67, %do.end60
  %ret.1 = phi i32 [ -110, %do.end60 ], [ %call62, %do.end67 ], [ %ret.0, %out_reset_pm_assert ]
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr93 = getelementptr i8, ptr %43, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  %45 = and i32 %44, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr102 = getelementptr i8, ptr %47, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 %45) #5, !srcloc !81
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  %51 = or i32 %50, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #5, !srcloc !81
  br label %cleanup

cleanup:                                          ; preds = %out_disable_clock, %if.end77.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_disable_clock ], [ 0, %if.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_pro4_power_off(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rst_rx = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %rst_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rst_rx, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %1) #5
  %rst_tx = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %priv, i32 0, i32 9
  %2 = ptrtoint ptr %rst_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst_tx, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #5
  %rst_pm = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %priv, i32 0, i32 8
  %4 = ptrtoint ptr %rst_pm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst_pm, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %5) #5
  %base = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  %9 = and i32 %8, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %9) #5, !srcloc !81
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  %15 = or i32 %14, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #5, !srcloc !81
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_pxs2_power_on(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  %3 = or i32 %2, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #5, !srcloc !81
  %6 = and i32 %3, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #5, !srcloc !81
  %data = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %priv, i32 0, i32 11
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %is_ready_high = getelementptr inbounds %struct.uniphier_ahciphy_soc_data, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %is_ready_high to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_ready_high, align 1, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  %call36 = tail call i64 @ktime_get() #5
  %add.i112 = add i64 %call36, 400000
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 226) #5
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %16 = and i32 %15, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not126 = icmp eq i32 %16, 0
  br i1 %tobool11.not126, label %if.then.land.lhs.true_crit_edge, label %if.then.if.end92_crit_edge

if.then.if.end92_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then28.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %call15 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call15, i64 %add.i112)
  %cmp3.i = icmp sgt i64 %call15, %add.i112
  br i1 %cmp3.i, label %for.end, label %if.then28

if.then28:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 51, i32 noundef 200, i32 noundef 2) #5
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %20 = and i32 %19, 8388608
  %tobool11.not = icmp eq i32 %20, 0
  br i1 %tobool11.not, label %if.then28.land.lhs.true_crit_edge, label %if.then28.if.end92_crit_edge

if.then28.if.end92_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

if.then28.land.lhs.true_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %24 = and i32 %23, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool32.not = icmp eq i32 %24, 0
  br i1 %tobool32.not, label %for.end.do.end91_crit_edge, label %for.end.if.end92_crit_edge

for.end.if.end92_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

for.end.do.end91_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end91

if.else:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 229) #5
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %28 = and i32 %27, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool59.not128 = icmp eq i32 %28, 0
  br i1 %tobool59.not128, label %if.else.if.end92_crit_edge, label %if.else.land.lhs.true63_crit_edge

if.else.land.lhs.true63_crit_edge:                ; preds = %if.else
  br label %land.lhs.true63

if.else.if.end92_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

land.lhs.true63:                                  ; preds = %if.then77.land.lhs.true63_crit_edge, %if.else.land.lhs.true63_crit_edge
  %call64 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call64, i64 %add.i112)
  %cmp3.i114 = icmp sgt i64 %call64, %add.i112
  br i1 %cmp3.i114, label %for.end81, label %if.then77

if.then77:                                        ; preds = %land.lhs.true63
  tail call void @usleep_range_state(i32 noundef 51, i32 noundef 200, i32 noundef 2) #5
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %32 = and i32 %31, 8388608
  %tobool59.not = icmp eq i32 %32, 0
  br i1 %tobool59.not, label %if.then77.if.end92_crit_edge, label %if.then77.land.lhs.true63_crit_edge

if.then77.land.lhs.true63_crit_edge:              ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true63

if.then77.if.end92_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

for.end81:                                        ; preds = %land.lhs.true63
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  %36 = and i32 %35, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool84.not = icmp eq i32 %36, 0
  br i1 %tobool84.not, label %for.end81.if.end92_crit_edge, label %for.end81.do.end91_crit_edge

for.end81.do.end91_crit_edge:                     ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end91

for.end81.if.end92_crit_edge:                     ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

do.end91:                                         ; preds = %for.end81.do.end91_crit_edge, %for.end.do.end91_crit_edge
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.23) #8
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  %42 = or i32 %41, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #5, !srcloc !81
  %45 = and i32 %42, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #5, !srcloc !81
  br label %if.end92

if.end92:                                         ; preds = %do.end91, %for.end81.if.end92_crit_edge, %if.then77.if.end92_crit_edge, %if.else.if.end92_crit_edge, %for.end.if.end92_crit_edge, %if.then28.if.end92_crit_edge, %if.then.if.end92_crit_edge
  %ret.0121 = phi i32 [ -110, %do.end91 ], [ 0, %for.end.if.end92_crit_edge ], [ 0, %for.end81.if.end92_crit_edge ], [ 0, %if.then.if.end92_crit_edge ], [ 0, %if.else.if.end92_crit_edge ], [ 0, %if.then77.if.end92_crit_edge ], [ 0, %if.then28.if.end92_crit_edge ]
  ret i32 %ret.0121
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_pxs2_power_off(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  %3 = or i32 %2, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #5, !srcloc !81
  %6 = and i32 %3, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #5, !srcloc !81
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_pxs3_init(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  %3 = and i32 %2, -2139062017
  %4 = or i32 %3, 1111913216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr55 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %4) #5, !srcloc !81
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr59 = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr120 = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0208 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %inc = add nuw nsw i32 %i.0208, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_phy_uniphier_ahci__384_510_uniphier_ahciphy_driver_init6, !1, !"__initcall__kmod_phy_uniphier_ahci__384_510_uniphier_ahciphy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 510, i32 1}
!2 = !{ptr @__exitcall_uniphier_ahciphy_driver_exit, !1, !"__exitcall_uniphier_ahciphy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author385, !4, !"__UNIQUE_ID_author385", i1 false, i1 false}
!4 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 512, i32 1}
!5 = !{ptr @__UNIQUE_ID_description386, !6, !"__UNIQUE_ID_description386", i1 false, i1 false}
!6 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 513, i32 1}
!7 = !{ptr @__UNIQUE_ID_file387, !8, !"__UNIQUE_ID_file387", i1 false, i1 false}
!8 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 514, i32 1}
!9 = !{ptr @__UNIQUE_ID_license388, !8, !"__UNIQUE_ID_license388", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 506, i32 11}
!12 = !{ptr @uniphier_ahciphy_driver, !13, !"uniphier_ahciphy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 503, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 400, i32 6}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 407, i32 39}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 412, i32 33}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 426, i32 44}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 434, i32 53}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 438, i32 53}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 442, i32 53}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 449, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @uniphier_ahciphy_probe._entry, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @uniphier_ahciphy_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @uniphier_ahciphy_ops, !36, !"uniphier_ahciphy_ops", i1 false, i1 false}
!36 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 379, i32 29}
!37 = !{ptr @uniphier_ahciphy_match, !38, !"uniphier_ahciphy_match", i1 false, i1 false}
!38 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 486, i32 34}
!39 = !{ptr @uniphier_pro4_data, !40, !"uniphier_pro4_data", i1 false, i1 false}
!40 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 461, i32 47}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 131, i32 3}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @uniphier_ahciphy_pro4_power_on._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @uniphier_ahciphy_pro4_power_on._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 138, i32 3}
!48 = !{ptr @uniphier_ahciphy_pro4_power_on._entry.14, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @uniphier_ahciphy_pro4_power_on._entry_ptr.16, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 144, i32 3}
!52 = !{ptr @uniphier_ahciphy_pro4_power_on._entry.17, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @uniphier_ahciphy_pro4_power_on._entry_ptr.19, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 150, i32 3}
!56 = !{ptr @uniphier_ahciphy_pro4_power_on._entry.20, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @uniphier_ahciphy_pro4_power_on._entry_ptr.22, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @uniphier_pxs2_data, !59, !"uniphier_pxs2_data", i1 false, i1 false}
!59 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 469, i32 47}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 231, i32 3}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @uniphier_ahciphy_pxs2_power_on._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @uniphier_ahciphy_pxs2_power_on._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @uniphier_pxs3_data, !66, !"uniphier_pxs3_data", i1 false, i1 false}
!66 = !{!"../drivers/phy/socionext/phy-uniphier-ahci.c", i32 477, i32 47}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i8 0, i8 2}
!78 = !{i64 3120439}
!79 = !{i64 2155179198}
!80 = !{i64 2155304211}
!81 = !{i64 3120021}
!82 = !{i64 2155304871}
!83 = !{i64 2155386511}
!84 = !{i64 2155387171}
!85 = !{i64 2155598856}
!86 = !{i64 2155599516}
!87 = !{i64 2155599815}
!88 = !{i64 2155600475}
!89 = !{i64 2155600774}
!90 = !{i64 2155602715}
!91 = !{i64 2155603201}
!92 = !{i64 2155610344}
!93 = !{i64 2155610643}
!94 = !{i64 2155611303}
!95 = !{i64 2155611602}
!96 = !{i64 2155612262}
!97 = !{i64 2155612561}
!98 = !{i64 2155613221}
!99 = !{i64 2155613520}
!100 = !{i64 2155614180}
!101 = !{i64 2155614479}
!102 = !{i64 2155614954}
!103 = !{i64 2155617827}
!104 = !{i64 2155618309}
!105 = !{i64 2155620068}
!106 = !{i64 2155620550}
!107 = !{i64 2155615429}
!108 = !{i64 2155615902}
!109 = !{i64 2155622809}
!110 = !{i64 2155748767}
!111 = !{i64 2155749427}
!112 = !{i64 2155875654}
!113 = !{i64 2156001845}
