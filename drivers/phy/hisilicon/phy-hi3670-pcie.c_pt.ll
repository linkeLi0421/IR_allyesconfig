; ModuleID = '/llk/IR_all_yes/drivers/phy/hisilicon/phy-hi3670-pcie.c_pt.bc'
source_filename = "../drivers/phy/hisilicon/phy-hi3670-pcie.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.hi3670_pcie_phy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_phy_hi3670_pcie__339_839_hi3670_pcie_phy_driver_init6 = internal global ptr @hi3670_pcie_phy_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_description340 = internal constant [58 x i8] c"phy_hi3670_pcie.description=PCIe phy driver for Kirin 970\00", section ".modinfo", align 1
@__UNIQUE_ID_author341 = internal constant [66 x i8] c"phy_hi3670_pcie.author=Mauro Carvalho Chehab <mchehab@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author342 = internal constant [63 x i8] c"phy_hi3670_pcie.author=Manivannan Sadhasivam <mani@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file343 = internal constant [59 x i8] c"phy_hi3670_pcie.file=drivers/phy/hisilicon/phy-hi3670-pcie\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [31 x i8] c"phy_hi3670_pcie.license=GPL v2\00", section ".modinfo", align 1
@hi3670_pcie_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hi3670_pcie_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @hi3670_pcie_phy_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hi3670_pcie_phy\00", [16 x i8] zeroinitializer }, align 32
@hi3670_pcie_phy_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi970-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hi3670_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @hi3670_pcie_phy_init, ptr null, ptr @hi3670_pcie_phy_power_on, ptr @hi3670_pcie_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@hi3670_pcie_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 814, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hi3670_pcie_phy_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/phy/hisilicon/phy-hi3670-pcie.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hi3670_pcie_phy_probe._entry_ptr = internal global ptr @hi3670_pcie_phy_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hisilicon,hi3670-crgctrl\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hisilicon,hi3670-sctrl\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hisilicon,hi3670-pmctrl\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phy_ref\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aux\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"apb_phy\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"apb_sys\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aclk\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hisilicon,eye-diagram-param\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcie\00", [27 x i8] zeroinitializer }, align 32
@hi3670_pcie_get_resources_from_pcie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 563, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no pcie node found in %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"hi3670_pcie_get_resources_from_pcie\00", [60 x i8] zeroinitializer }, align 32
@hi3670_pcie_get_resources_from_pcie._entry_ptr = internal global ptr @hi3670_pcie_get_resources_from_pcie._entry, section ".printk_index", align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@hi3670_pcie_get_resources_from_pcie._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 569, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Didn't find pcie device\0A\00", [39 x i8] zeroinitializer }, align 32
@hi3670_pcie_get_resources_from_pcie._entry_ptr.20 = internal global ptr @hi3670_pcie_get_resources_from_pcie._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kirin_pcie_apb\00", [17 x i8] zeroinitializer }, align 32
@hi3670_pcie_get_resources_from_pcie._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.3, i32 583, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get APB regmap\0A\00", [38 x i8] zeroinitializer }, align 32
@hi3670_pcie_get_resources_from_pcie._entry_ptr.24 = internal global ptr @hi3670_pcie_get_resources_from_pcie._entry.22, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hi3670_pcie_allclk_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 478, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to enable pll\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hi3670_pcie_allclk_ctrl\00", [40 x i8] zeroinitializer }, align 32
@hi3670_pcie_allclk_ctrl._entry_ptr = internal global ptr @hi3670_pcie_allclk_ctrl._entry, section ".printk_index", align 4
@hi3670_pcie_allclk_ctrl._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 487, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to set rate\0A\00", [44 x i8] zeroinitializer }, align 32
@hi3670_pcie_allclk_ctrl._entry_ptr.29 = internal global ptr @hi3670_pcie_allclk_ctrl._entry.27, section ".printk_index", align 4
@hi3670_pcie_pll_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 349, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wait for pll_lock timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hi3670_pcie_pll_ctrl\00", [43 x i8] zeroinitializer }, align 32
@hi3670_pcie_pll_ctrl._entry_ptr = internal global ptr @hi3670_pcie_pll_ctrl._entry, section ".printk_index", align 4
@is_pipe_clk_stable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 514, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PIPE clk is not stable\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"is_pipe_clk_stable\00", [45 x i8] zeroinitializer }, align 32
@is_pipe_clk_stable._entry_ptr = internal global ptr @is_pipe_clk_stable._entry, section ".printk_index", align 4
@hi3670_pcie_noc_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 544, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to reverse noc power-status\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hi3670_pcie_noc_power\00", [42 x i8] zeroinitializer }, align 32
@hi3670_pcie_noc_power._entry_ptr = internal global ptr @hi3670_pcie_noc_power._entry, section ".printk_index", align 4
@___asan_gen_.36 = private unnamed_addr constant [23 x i8] c"hi3670_pcie_phy_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 831, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 835, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"hi3670_pcie_phy_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 824, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"hi3670_phy_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 738, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 814, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 751, i32 52 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 755, i32 52 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 759, i32 51 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 764, i32 39 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 768, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 772, i32 39 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 776, i32 39 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 780, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 223, i32 39 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 560, i32 57 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 562, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 569, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 581, i32 38 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 583, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 478, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 487, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 349, i32 5 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 514, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private constant [43 x i8] c"../drivers/phy/hisilicon/phy-hi3670-pcie.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 544, i32 4 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_author342, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_license344, ptr @__initcall__kmod_phy_hi3670_pcie__339_839_hi3670_pcie_phy_driver_init6, ptr @hi3670_pcie_allclk_ctrl._entry, ptr @hi3670_pcie_allclk_ctrl._entry.27, ptr @hi3670_pcie_allclk_ctrl._entry_ptr, ptr @hi3670_pcie_allclk_ctrl._entry_ptr.29, ptr @hi3670_pcie_get_resources_from_pcie._entry, ptr @hi3670_pcie_get_resources_from_pcie._entry.18, ptr @hi3670_pcie_get_resources_from_pcie._entry.22, ptr @hi3670_pcie_get_resources_from_pcie._entry_ptr, ptr @hi3670_pcie_get_resources_from_pcie._entry_ptr.20, ptr @hi3670_pcie_get_resources_from_pcie._entry_ptr.24, ptr @hi3670_pcie_noc_power._entry, ptr @hi3670_pcie_noc_power._entry_ptr, ptr @hi3670_pcie_phy_probe._entry, ptr @hi3670_pcie_phy_probe._entry_ptr, ptr @hi3670_pcie_pll_ctrl._entry, ptr @hi3670_pcie_pll_ctrl._entry_ptr, ptr @is_pipe_clk_stable._entry, ptr @is_pipe_clk_stable._entry_ptr, ptr @hi3670_pcie_phy_driver, ptr @.str, ptr @hi3670_pcie_phy_match, ptr @hi3670_phy_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_pcie_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_pcie_phy_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_pcie_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_pcie_get_resources_from_pcie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_pcie_get_resources_from_pcie._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_pcie_get_resources_from_pcie._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_pcie_allclk_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_pcie_allclk_ctrl._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_pcie_pll_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_pipe_clk_stable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_pcie_noc_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3670_pcie_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi3670_pcie_phy_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3670_pcie_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %call.i30 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.6) #7
  %crgctrl.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %crgctrl.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i30, ptr %crgctrl.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.hi3670_pcie_phy_get_resources.exit_crit_edge, label %if.end.i

if.end.hi3670_pcie_phy_get_resources.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %hi3670_pcie_phy_get_resources.exit

if.end.i:                                         ; preds = %if.end
  %call6.i = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.7) #7
  %sysctrl.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %sysctrl.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6.i, ptr %sysctrl.i, align 4
  %cmp.i94.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94.i, label %if.end.i.hi3670_pcie_phy_get_resources.exit_crit_edge, label %if.end12.i

if.end.i.hi3670_pcie_phy_get_resources.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hi3670_pcie_phy_get_resources.exit

if.end12.i:                                       ; preds = %if.end.i
  %call13.i = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.8) #7
  %pmctrl.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %pmctrl.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call13.i, ptr %pmctrl.i, align 4
  %cmp.i95.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95.i, label %if.end12.i.hi3670_pcie_phy_get_resources.exit_crit_edge, label %if.end19.i

if.end12.i.hi3670_pcie_phy_get_resources.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hi3670_pcie_phy_get_resources.exit

if.end19.i:                                       ; preds = %if.end12.i
  %call20.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.9) #7
  %phy_ref_clk.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %phy_ref_clk.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call20.i, ptr %phy_ref_clk.i, align 4
  %cmp.i96.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96.i, label %if.end19.i.hi3670_pcie_phy_get_resources.exit_crit_edge, label %if.end26.i

if.end19.i.hi3670_pcie_phy_get_resources.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hi3670_pcie_phy_get_resources.exit

if.end26.i:                                       ; preds = %if.end19.i
  %call27.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #7
  %aux_clk.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %call.i, i32 0, i32 10
  %5 = ptrtoint ptr %aux_clk.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call27.i, ptr %aux_clk.i, align 4
  %cmp.i97.i = icmp ugt ptr %call27.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97.i, label %if.end26.i.hi3670_pcie_phy_get_resources.exit_crit_edge, label %if.end33.i

if.end26.i.hi3670_pcie_phy_get_resources.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hi3670_pcie_phy_get_resources.exit

if.end33.i:                                       ; preds = %if.end26.i
  %call34.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.11) #7
  %apb_phy_clk.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %apb_phy_clk.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call34.i, ptr %apb_phy_clk.i, align 4
  %cmp.i98.i = icmp ugt ptr %call34.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98.i, label %if.end33.i.hi3670_pcie_phy_get_resources.exit_crit_edge, label %if.end40.i

if.end33.i.hi3670_pcie_phy_get_resources.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hi3670_pcie_phy_get_resources.exit

if.end40.i:                                       ; preds = %if.end33.i
  %call41.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.12) #7
  %apb_sys_clk.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %apb_sys_clk.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call41.i, ptr %apb_sys_clk.i, align 4
  %cmp.i99.i = icmp ugt ptr %call41.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99.i, label %if.end40.i.hi3670_pcie_phy_get_resources.exit_crit_edge, label %if.end47.i

if.end40.i.hi3670_pcie_phy_get_resources.exit_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hi3670_pcie_phy_get_resources.exit

if.end47.i:                                       ; preds = %if.end40.i
  %call48.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.13) #7
  %aclk.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %call.i, i32 0, i32 9
  %8 = ptrtoint ptr %aclk.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call48.i, ptr %aclk.i, align 4
  %cmp.i100.i = icmp ugt ptr %call48.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100.i, label %if.end47.i.hi3670_pcie_phy_get_resources.exit_crit_edge, label %if.end54.i

if.end47.i.hi3670_pcie_phy_get_resources.exit_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hi3670_pcie_phy_get_resources.exit

if.end54.i:                                       ; preds = %if.end47.i
  %call55.i = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call55.i, ptr %base.i, align 4
  %cmp.i101.i = icmp ugt ptr %call55.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101.i, label %if.end54.i.hi3670_pcie_phy_get_resources.exit_crit_edge, label %hi3670_pcie_phy_get_resources.exit.thread

if.end54.i.hi3670_pcie_phy_get_resources.exit_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hi3670_pcie_phy_get_resources.exit

hi3670_pcie_phy_get_resources.exit.thread:        ; preds = %if.end54.i
  tail call fastcc void @hi3670_pcie_get_eyeparam(ptr noundef nonnull %call.i) #7
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call7 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %11, ptr noundef nonnull @hi3670_phy_ops) #7
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

hi3670_pcie_phy_get_resources.exit:               ; preds = %if.end54.i.hi3670_pcie_phy_get_resources.exit_crit_edge, %if.end47.i.hi3670_pcie_phy_get_resources.exit_crit_edge, %if.end40.i.hi3670_pcie_phy_get_resources.exit_crit_edge, %if.end33.i.hi3670_pcie_phy_get_resources.exit_crit_edge, %if.end26.i.hi3670_pcie_phy_get_resources.exit_crit_edge, %if.end19.i.hi3670_pcie_phy_get_resources.exit_crit_edge, %if.end12.i.hi3670_pcie_phy_get_resources.exit_crit_edge, %if.end.i.hi3670_pcie_phy_get_resources.exit_crit_edge, %if.end.hi3670_pcie_phy_get_resources.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call.i30, %if.end.hi3670_pcie_phy_get_resources.exit_crit_edge ], [ %call6.i, %if.end.i.hi3670_pcie_phy_get_resources.exit_crit_edge ], [ %call13.i, %if.end12.i.hi3670_pcie_phy_get_resources.exit_crit_edge ], [ %call20.i, %if.end19.i.hi3670_pcie_phy_get_resources.exit_crit_edge ], [ %call27.i, %if.end26.i.hi3670_pcie_phy_get_resources.exit_crit_edge ], [ %call34.i, %if.end33.i.hi3670_pcie_phy_get_resources.exit_crit_edge ], [ %call41.i, %if.end40.i.hi3670_pcie_phy_get_resources.exit_crit_edge ], [ %call48.i, %if.end47.i.hi3670_pcie_phy_get_resources.exit_crit_edge ], [ %call55.i, %if.end54.i.hi3670_pcie_phy_get_resources.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  br label %cleanup

do.end:                                           ; preds = %hi3670_pcie_phy_get_resources.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  %12 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %hi3670_pcie_phy_get_resources.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call7, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call12 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #7
  %cmp.i.i31 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  %14 = ptrtoint ptr %call12 to i32
  %spec.select.i = select i1 %cmp.i.i31, i32 %14, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %hi3670_pcie_phy_get_resources.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %do.end ], [ %spec.select.i, %if.end11 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %hi3670_pcie_phy_get_resources.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hi3670_pcie_get_eyeparam(ptr noundef %phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %eye_param = getelementptr %struct.hi3670_pcie_phy, ptr %phy, i32 0, i32 11
  %call.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.14, ptr noundef %eye_param, i32 noundef 5, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = call ptr @memset(ptr %eye_param, i32 255, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3670_pcie_phy_init(ptr nocapture noundef readonly %generic_phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %generic_phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_get_child_by_name(ptr noundef %7, ptr noundef nonnull @.str.15) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %of_node3.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %of_node3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node3.i, align 8
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %full_name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16, ptr noundef %13) #10
  br label %hi3670_pcie_get_resources_from_pcie.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call ptr @bus_find_device(ptr noundef nonnull @platform_bus_type, ptr noundef null, ptr noundef nonnull %call.i, ptr noundef nonnull @device_match_of_node) #7
  %tobool5.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not.i, label %do.end9.i, label %if.end10.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19) #10
  br label %hi3670_pcie_get_resources_from_pcie.exit

if.end10.i:                                       ; preds = %if.end.i
  %call11.i = tail call ptr @dev_get_regmap(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.21) #7
  %apb.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %apb.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call11.i, ptr %apb.i, align 4
  %tobool13.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool13.not.i, label %do.end17.i, label %if.end10.i.hi3670_pcie_get_resources_from_pcie.exit_crit_edge

if.end10.i.hi3670_pcie_get_resources_from_pcie.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hi3670_pcie_get_resources_from_pcie.exit

do.end17.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.23) #10
  br label %hi3670_pcie_get_resources_from_pcie.exit

hi3670_pcie_get_resources_from_pcie.exit:         ; preds = %do.end17.i, %if.end10.i.hi3670_pcie_get_resources_from_pcie.exit_crit_edge, %do.end9.i, %do.end.i
  %retval.0.i = phi i32 [ -19, %do.end17.i ], [ -19, %do.end9.i ], [ -19, %do.end.i ], [ 0, %if.end10.i.hi3670_pcie_get_resources_from_pcie.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3670_pcie_phy_power_on(ptr nocapture noundef readonly %generic_phy) #2 align 64 {
entry:
  %val.i56 = alloca i32, align 4
  %val.i45 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %generic_phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !95
  %sysctrl = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %sysctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sysctrl, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 96, i32 noundef 16) #7
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 105, i32 noundef 2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i, align 4, !annotation !95
  %6 = ptrtoint ptr %sysctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sysctrl, align 4
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef 330, ptr noundef nonnull %val.i) #7
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i, align 4
  %or.i = and i32 %9, -821097473
  %and.i = or i32 %or.i, 15791104
  store i32 %and.i, ptr %val.i, align 4
  %10 = ptrtoint ptr %sysctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sysctrl, align 4
  %call3.i = call i32 @regmap_write(ptr noundef %11, i32 noundef 330, i32 noundef %and.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %call2 = call fastcc i32 @kirin_pcie_clk_ctrl(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %sysctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sysctrl, align 4
  %call4 = call i32 @regmap_write(ptr noundef %13, i32 noundef 68, i32 noundef 48) #7
  %crgctrl = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %crgctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crgctrl, align 4
  %call5 = call i32 @regmap_write(ptr noundef %15, i32 noundef 136, i32 noundef -1946157056) #7
  %16 = ptrtoint ptr %sysctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sysctrl, align 4
  %call7 = call i32 @regmap_write(ptr noundef %17, i32 noundef 400, i32 noundef 1589248) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i45) #7
  %18 = ptrtoint ptr %val.i45 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i45, align 4, !annotation !95
  %apb.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %apb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %apb.i, align 4
  %call.i46 = call i32 @regmap_write(ptr noundef %20, i32 noundef 80, i32 noundef 39867728) #7
  %21 = ptrtoint ptr %apb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %apb.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %22, i32 noundef 28, ptr noundef nonnull %val.i45) #7
  %23 = ptrtoint ptr %val.i45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i45, align 4
  %or.i47 = or i32 %24, 1024
  store i32 %or.i47, ptr %val.i45, align 4
  %25 = ptrtoint ptr %apb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %apb.i, align 4
  %call4.i = call i32 @regmap_write(ptr noundef %26, i32 noundef 28, i32 noundef %or.i47) #7
  %27 = ptrtoint ptr %apb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %apb.i, align 4
  %call6.i = call i32 @regmap_read(ptr noundef %28, i32 noundef 48, ptr noundef nonnull %val.i45) #7
  %29 = ptrtoint ptr %val.i45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i45, align 4
  %and.i48 = and i32 %30, -16
  %or7.i = or i32 %and.i48, 2
  store i32 %or7.i, ptr %val.i45, align 4
  %31 = ptrtoint ptr %apb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %apb.i, align 4
  %call9.i = call i32 @regmap_write(ptr noundef %32, i32 noundef 48, i32 noundef %or7.i) #7
  %base.i.i.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %34, i32 262148
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #7, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %36 = and i32 %35, -2561
  %37 = or i32 %36, 512
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr1.i7.i.i = getelementptr i8, ptr %39, i32 262148
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i.i, i32 %37) #7, !srcloc !99
  %40 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr1.i.i18.i = getelementptr i8, ptr %41, i32 262296
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i18.i) #7, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %43 = or i32 %42, 67108864
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr1.i7.i22.i = getelementptr i8, ptr %45, i32 262296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i22.i, i32 %43) #7, !srcloc !99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i45) #7
  %call8 = call fastcc i32 @hi3670_pcie_allclk_ctrl(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.disable_clks_crit_edge

if.end.disable_clks_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clks

if.end11:                                         ; preds = %if.end
  %46 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 262144
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %49 = and i32 %48, -16385
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %51, i32 262144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %49) #7, !srcloc !99
  %52 = ptrtoint ptr %apb.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %apb.i, align 4
  %call12 = call i32 @regmap_read(ptr noundef %53, i32 noundef 48, ptr noundef nonnull %val) #7
  %54 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val, align 4
  %or = or i32 %55, 4
  store i32 %or, ptr %val, align 4
  %56 = ptrtoint ptr %apb.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %apb.i, align 4
  %call14 = call i32 @regmap_write(ptr noundef %57, i32 noundef 48, i32 noundef %or) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %58(i32 noundef 2147480) #7
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %61 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %62, i32 263168
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #7, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %64 = and i32 %63, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not16.i = icmp eq i32 %64, 0
  br i1 %tobool.not16.i, label %if.end11.if.end18_crit_edge, label %if.end11.while.body.i_crit_edge

if.end11.while.body.i_crit_edge:                  ; preds = %if.end11
  br label %while.body.i

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end11.while.body.i_crit_edge
  %time.017.i = phi i32 [ %dec.i, %if.end.i.while.body.i_crit_edge ], [ 100, %if.end11.while.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %65(i32 noundef 214748000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %time.017.i)
  %tobool2.not.i = icmp eq i32 %time.017.i, 0
  br i1 %tobool2.not.i, label %is_pipe_clk_stable.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %dec.i = add nsw i32 %time.017.i, -1
  %66 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr1.i12.i = getelementptr i8, ptr %67, i32 263168
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i12.i) #7, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %69 = and i32 %68, 2048
  %tobool.not.i = icmp eq i32 %69, 0
  br i1 %tobool.not.i, label %if.end.i.if.end18_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end.i.if.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

is_pipe_clk_stable.exit:                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.32) #10
  br label %disable_clks

if.end18:                                         ; preds = %if.end.i.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %70 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %71, i32 49156
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i52) #7, !srcloc !96
  %73 = call i32 @llvm.bswap.i32(i32 %72) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %eye_param.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %1, i32 0, i32 11
  %arrayidx.i = getelementptr %struct.hi3670_pcie_phy, ptr %1, i32 0, i32 11, i32 1
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %cmp.not.i = icmp eq i32 %75, -1
  %and.i54 = and i32 %73, -7937
  %shl.i = shl i32 %75, 8
  %and21.i = and i32 %shl.i, 3840
  %or.i55 = or i32 %and.i54, %and21.i
  %or22.i = or i32 %or.i55, 4096
  %val.0.i = select i1 %cmp.not.i, i32 %73, i32 %or22.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  call void @arm_heavy_mb() #7
  %76 = call i32 @llvm.bswap.i32(i32 %val.0.i) #7
  %77 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i235.i = getelementptr i8, ptr %78, i32 49156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i235.i, i32 %76) #7, !srcloc !99
  %79 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i237.i = getelementptr i8, ptr %80, i32 16396
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i237.i) #7, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %82 = and i32 %81, 1088487423
  %83 = call i32 @llvm.bswap.i32(i32 %82) #7
  %arrayidx27.i = getelementptr %struct.hi3670_pcie_phy, ptr %1, i32 0, i32 11, i32 2
  %84 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %cmp28.not.i = icmp eq i32 %85, -1
  %and59.i = and i32 %85, 63
  %or60.i = or i32 %83, %and59.i
  %or61.i = or i32 %or60.i, 64
  %val.1.i = select i1 %cmp28.not.i, i32 %83, i32 %or61.i
  %arrayidx64.i = getelementptr %struct.hi3670_pcie_phy, ptr %1, i32 0, i32 11, i32 3
  %86 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx64.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %87)
  %cmp65.not.i = icmp eq i32 %87, -1
  %shl95.i = shl i32 %87, 7
  %and96.i = and i32 %shl95.i, 8064
  %or97.i = or i32 %val.1.i, %and96.i
  %or98.i = or i32 %or97.i, 8192
  %val.2.i = select i1 %cmp65.not.i, i32 %val.1.i, i32 %or98.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  call void @arm_heavy_mb() #7
  %88 = call i32 @llvm.bswap.i32(i32 %val.2.i) #7
  %89 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i239.i = getelementptr i8, ptr %90, i32 16396
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i239.i, i32 %88) #7, !srcloc !99
  %91 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i241.i = getelementptr i8, ptr %92, i32 60
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i241.i) #7, !srcloc !96
  %94 = call i32 @llvm.bswap.i32(i32 %93) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %95 = ptrtoint ptr %eye_param.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %eye_param.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %cmp103.not.i = icmp eq i32 %96, -1
  %and105.i = and i32 %94, -961
  %shl134.i = shl i32 %96, 6
  %and135.i = and i32 %shl134.i, 448
  %or136.i = or i32 %and105.i, %and135.i
  %or137.i = or i32 %or136.i, 512
  %val.3.i = select i1 %cmp103.not.i, i32 %94, i32 %or137.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  call void @arm_heavy_mb() #7
  %97 = call i32 @llvm.bswap.i32(i32 %val.3.i) #7
  %98 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i243.i = getelementptr i8, ptr %99, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i243.i, i32 %97) #7, !srcloc !99
  %100 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i245.i = getelementptr i8, ptr %101, i32 16392
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i245.i) #7, !srcloc !96
  %103 = call i32 @llvm.bswap.i32(i32 %102) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %arrayidx141.i = getelementptr %struct.hi3670_pcie_phy, ptr %1, i32 0, i32 11, i32 4
  %104 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx141.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %105)
  %cmp142.not.i = icmp eq i32 %105, -1
  %and144.i = and i32 %103, -65025
  %shl173.i = shl i32 %105, 9
  %and174.i = and i32 %shl173.i, 32256
  %or175.i = or i32 %and144.i, %and174.i
  %or176.i = or i32 %or175.i, 32768
  %val.4.i = select i1 %cmp142.not.i, i32 %103, i32 %or176.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  call void @arm_heavy_mb() #7
  %106 = call i32 @llvm.bswap.i32(i32 %val.4.i) #7
  %107 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i247.i = getelementptr i8, ptr %108, i32 16392
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i247.i, i32 %106) #7, !srcloc !99
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i56) #7
  %111 = ptrtoint ptr %val.i56 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 65536, ptr %val.i56, align 4
  %pmctrl.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %1, i32 0, i32 5
  %112 = ptrtoint ptr %pmctrl.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pmctrl.i, align 4
  %call.i57 = call i32 @regmap_write(ptr noundef %113, i32 noundef 908, i32 noundef 65536) #7
  %114 = ptrtoint ptr %pmctrl.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pmctrl.i, align 4
  %call4.i58 = call i32 @regmap_read(ptr noundef %115, i32 noundef 916, ptr noundef nonnull %val.i56) #7
  %116 = ptrtoint ptr %val.i56 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %val.i56, align 4
  %and1.i = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.not2.i = icmp eq i32 %and1.i, 0
  br i1 %cmp.not2.i, label %if.end18.hi3670_pcie_noc_power.exit.thread_crit_edge, label %if.end18.while.body.i59_crit_edge

if.end18.while.body.i59_crit_edge:                ; preds = %if.end18
  br label %while.body.i59

if.end18.hi3670_pcie_noc_power.exit.thread_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %hi3670_pcie_noc_power.exit.thread

while.body.i59:                                   ; preds = %if.end7.i.while.body.i59_crit_edge, %if.end18.while.body.i59_crit_edge
  %time.03.i = phi i32 [ %dec.i61, %if.end7.i.while.body.i59_crit_edge ], [ 100, %if.end18.while.body.i59_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %118(i32 noundef 2147480) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %time.03.i)
  %tobool5.not.i = icmp eq i32 %time.03.i, 0
  br i1 %tobool5.not.i, label %hi3670_pcie_noc_power.exit, label %if.end7.i

if.end7.i:                                        ; preds = %while.body.i59
  %dec.i61 = add nsw i32 %time.03.i, -1
  %119 = ptrtoint ptr %pmctrl.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pmctrl.i, align 4
  %call9.i62 = call i32 @regmap_read(ptr noundef %120, i32 noundef 916, ptr noundef nonnull %val.i56) #7
  %121 = ptrtoint ptr %val.i56 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %val.i56, align 4
  %and.i63 = and i32 %122, 1
  %cmp.not.i64 = icmp eq i32 %and.i63, 0
  br i1 %cmp.not.i64, label %if.end7.i.hi3670_pcie_noc_power.exit.thread_crit_edge, label %if.end7.i.while.body.i59_crit_edge

if.end7.i.while.body.i59_crit_edge:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i59

if.end7.i.hi3670_pcie_noc_power.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hi3670_pcie_noc_power.exit.thread

hi3670_pcie_noc_power.exit.thread:                ; preds = %if.end7.i.hi3670_pcie_noc_power.exit.thread_crit_edge, %if.end18.hi3670_pcie_noc_power.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i56) #7
  br label %cleanup

hi3670_pcie_noc_power.exit:                       ; preds = %while.body.i59
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.34) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i56) #7
  br label %disable_clks

disable_clks:                                     ; preds = %hi3670_pcie_noc_power.exit, %is_pipe_clk_stable.exit, %if.end.disable_clks_crit_edge
  %ret.0 = phi i32 [ %call8, %if.end.disable_clks_crit_edge ], [ -22, %hi3670_pcie_noc_power.exit ], [ 0, %is_pipe_clk_stable.exit ]
  %aux_clk25.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %1, i32 0, i32 10
  %123 = ptrtoint ptr %aux_clk25.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %aux_clk25.i, align 4
  call void @clk_disable(ptr noundef %124) #7
  call void @clk_unprepare(ptr noundef %124) #7
  %aclk26.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %1, i32 0, i32 9
  %125 = ptrtoint ptr %aclk26.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %aclk26.i, align 4
  call void @clk_disable(ptr noundef %126) #7
  call void @clk_unprepare(ptr noundef %126) #7
  %apb_phy_clk27.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %1, i32 0, i32 7
  %127 = ptrtoint ptr %apb_phy_clk27.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %apb_phy_clk27.i, align 4
  call void @clk_disable(ptr noundef %128) #7
  call void @clk_unprepare(ptr noundef %128) #7
  %apb_sys_clk28.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %1, i32 0, i32 6
  %129 = ptrtoint ptr %apb_sys_clk28.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %apb_sys_clk28.i, align 4
  call void @clk_disable(ptr noundef %130) #7
  call void @clk_unprepare(ptr noundef %130) #7
  %phy_ref_clk29.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %1, i32 0, i32 8
  %131 = ptrtoint ptr %phy_ref_clk29.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %phy_ref_clk29.i, align 4
  call void @clk_disable(ptr noundef %132) #7
  call void @clk_unprepare(ptr noundef %132) #7
  br label %cleanup

cleanup:                                          ; preds = %disable_clks, %hi3670_pcie_noc_power.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %disable_clks ], [ %call2, %entry.cleanup_crit_edge ], [ 0, %hi3670_pcie_noc_power.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3670_pcie_phy_power_off(ptr nocapture noundef readonly %generic_phy) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %generic_phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !95
  %sysctrl.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %sysctrl.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sysctrl.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 330, ptr noundef nonnull %val.i) #7
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %or1.i = or i32 %6, 821097472
  store i32 %or1.i, ptr %val.i, align 4
  %7 = ptrtoint ptr %sysctrl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sysctrl.i, align 4
  %call3.i = call i32 @regmap_write(ptr noundef %8, i32 noundef 330, i32 noundef %or1.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %call1 = call fastcc i32 @hi3670_pcie_allclk_ctrl(ptr noundef %1, i1 noundef zeroext false)
  %9 = ptrtoint ptr %sysctrl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sysctrl.i, align 4
  %call2 = call i32 @regmap_write(ptr noundef %10, i32 noundef 96, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_of_node(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kirin_pcie_clk_ctrl(ptr nocapture noundef readonly %phy, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.end, label %close_clk

if.end:                                           ; preds = %entry
  %phy_ref_clk = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %phy_ref_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_ref_clk, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %1, i32 noundef 100000000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %phy_ref_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_ref_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end3
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end8, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end.i
  %apb_sys_clk = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %phy, i32 0, i32 6
  %4 = ptrtoint ptr %apb_sys_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_sys_clk, align 4
  %call.i48 = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.not.i49 = icmp eq i32 %call.i48, 0
  br i1 %tobool.not.i49, label %if.end.i52, label %if.end8.apb_sys_fail_crit_edge

if.end8.apb_sys_fail_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %apb_sys_fail

if.end.i52:                                       ; preds = %if.end8
  %call1.i50 = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool2.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool2.not.i51, label %if.end12, label %if.end.i52.apb_sys_fail.sink.split_crit_edge

if.end.i52.apb_sys_fail.sink.split_crit_edge:     ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %apb_sys_fail.sink.split

if.end12:                                         ; preds = %if.end.i52
  %apb_phy_clk = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %phy, i32 0, i32 7
  %6 = ptrtoint ptr %apb_phy_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %apb_phy_clk, align 4
  %call.i56 = tail call i32 @clk_prepare(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %tobool.not.i57, label %if.end.i60, label %if.end12.apb_phy_fail_crit_edge

if.end12.apb_phy_fail_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %apb_phy_fail

if.end.i60:                                       ; preds = %if.end12
  %call1.i58 = tail call i32 @clk_enable(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool2.not.i59 = icmp eq i32 %call1.i58, 0
  br i1 %tobool2.not.i59, label %if.end16, label %if.end.i60.apb_phy_fail.sink.split_crit_edge

if.end.i60.apb_phy_fail.sink.split_crit_edge:     ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %apb_phy_fail.sink.split

if.end16:                                         ; preds = %if.end.i60
  %aclk = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %phy, i32 0, i32 9
  %8 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aclk, align 4
  %call17 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.aclk_fail_crit_edge

if.end16.aclk_fail_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %aclk_fail

if.end20:                                         ; preds = %if.end16
  %aux_clk = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %phy, i32 0, i32 10
  %10 = ptrtoint ptr %aux_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aux_clk, align 4
  %call21 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.end20.aux_clk_fail_crit_edge

if.end20.aux_clk_fail_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %aux_clk_fail

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

close_clk:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %aux_clk25 = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %phy, i32 0, i32 10
  %12 = ptrtoint ptr %aux_clk25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aux_clk25, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  br label %aux_clk_fail

aux_clk_fail:                                     ; preds = %close_clk, %if.end20.aux_clk_fail_crit_edge
  %ret.0 = phi i32 [ %call21, %if.end20.aux_clk_fail_crit_edge ], [ 0, %close_clk ]
  %aclk26 = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %phy, i32 0, i32 9
  %14 = ptrtoint ptr %aclk26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aclk26, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  tail call void @clk_unprepare(ptr noundef %15) #7
  br label %aclk_fail

aclk_fail:                                        ; preds = %aux_clk_fail, %if.end16.aclk_fail_crit_edge
  %ret.1 = phi i32 [ %call17, %if.end16.aclk_fail_crit_edge ], [ %ret.0, %aux_clk_fail ]
  %apb_phy_clk27 = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %phy, i32 0, i32 7
  %16 = ptrtoint ptr %apb_phy_clk27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %apb_phy_clk27, align 4
  tail call void @clk_disable(ptr noundef %17) #7
  br label %apb_phy_fail.sink.split

apb_phy_fail.sink.split:                          ; preds = %aclk_fail, %if.end.i60.apb_phy_fail.sink.split_crit_edge
  %.sink = phi ptr [ %17, %aclk_fail ], [ %7, %if.end.i60.apb_phy_fail.sink.split_crit_edge ]
  %ret.2.ph = phi i32 [ %ret.1, %aclk_fail ], [ %call1.i58, %if.end.i60.apb_phy_fail.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #7
  br label %apb_phy_fail

apb_phy_fail:                                     ; preds = %apb_phy_fail.sink.split, %if.end12.apb_phy_fail_crit_edge
  %ret.2 = phi i32 [ %call.i56, %if.end12.apb_phy_fail_crit_edge ], [ %ret.2.ph, %apb_phy_fail.sink.split ]
  %apb_sys_clk28 = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %phy, i32 0, i32 6
  %18 = ptrtoint ptr %apb_sys_clk28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %apb_sys_clk28, align 4
  tail call void @clk_disable(ptr noundef %19) #7
  br label %apb_sys_fail.sink.split

apb_sys_fail.sink.split:                          ; preds = %apb_phy_fail, %if.end.i52.apb_sys_fail.sink.split_crit_edge
  %.sink70 = phi ptr [ %19, %apb_phy_fail ], [ %5, %if.end.i52.apb_sys_fail.sink.split_crit_edge ]
  %ret.3.ph = phi i32 [ %ret.2, %apb_phy_fail ], [ %call1.i50, %if.end.i52.apb_sys_fail.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink70) #7
  br label %apb_sys_fail

apb_sys_fail:                                     ; preds = %apb_sys_fail.sink.split, %if.end8.apb_sys_fail_crit_edge
  %ret.3 = phi i32 [ %call.i48, %if.end8.apb_sys_fail_crit_edge ], [ %ret.3.ph, %apb_sys_fail.sink.split ]
  %phy_ref_clk29 = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %phy, i32 0, i32 8
  %20 = ptrtoint ptr %phy_ref_clk29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy_ref_clk29, align 4
  tail call void @clk_disable(ptr noundef %21) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %apb_sys_fail, %if.end.i.cleanup.sink.split_crit_edge
  %.sink71 = phi ptr [ %21, %apb_sys_fail ], [ %3, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.3, %apb_sys_fail ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink71) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end20.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ %call.i, %if.end3.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hi3670_pcie_allclk_ctrl(ptr nocapture noundef readonly %phy, i1 noundef zeroext %clk_on) unnamed_addr #2 align 64 {
entry:
  %val.i37 = alloca i32, align 4
  %val.i20.i = alloca i32, align 4
  %val.i36 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %val.i32 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  br i1 %clk_on, label %if.end, label %entry.close_clocks_crit_edge

entry.close_clocks_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %close_clocks

if.end:                                           ; preds = %entry
  %base.i.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %phy, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 262148
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %5 = and i32 %4, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i7.i = getelementptr i8, ptr %7, i32 262148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i, i32 %5) #7, !srcloc !99
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %9, i32 265220
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %11 = or i32 %10, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i7.i.i = getelementptr i8, ptr %13, i32 265220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i.i, i32 %11) #7, !srcloc !99
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i.i61.i = getelementptr i8, ptr %15, i32 265280
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i61.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %17 = and i32 %16, -65296
  %18 = or i32 %17, 53248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i7.i65.i = getelementptr i8, ptr %20, i32 265280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i65.i, i32 %18) #7, !srcloc !99
  %21 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i.i68.i = getelementptr i8, ptr %22, i32 265284
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i68.i) #7, !srcloc !96
  %24 = shl i32 %23, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %or.i70.i = or i32 %24, 5592405
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i70.i) #7
  %26 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i7.i72.i = getelementptr i8, ptr %27, i32 265284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i72.i, i32 %25) #7, !srcloc !99
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i.i75.i = getelementptr i8, ptr %29, i32 265296
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i75.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %31 = and i32 %30, -7798795
  %32 = or i32 %31, 4521992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i7.i79.i = getelementptr i8, ptr %34, i32 265296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i79.i, i32 %32) #7, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i.i28 = getelementptr i8, ptr %36, i32 265300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i28, i32 536870912) #7, !srcloc !99
  %call = tail call fastcc i32 @hi3670_pcie_pll_ctrl(ptr noundef %phy, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.25) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %crgctrl.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %phy, i32 0, i32 3
  %37 = ptrtoint ptr %crgctrl.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %crgctrl.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 1136, i32 noundef 36864) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %39 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %val.i, align 4, !annotation !95
  %40 = ptrtoint ptr %crgctrl.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %crgctrl.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %41, i32 noundef 2048, ptr noundef nonnull %val.i) #7
  %42 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val.i, align 4
  %and.i30 = and i32 %43, -3
  store i32 %and.i30, ptr %val.i, align 4
  %44 = ptrtoint ptr %crgctrl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %crgctrl.i, align 4
  %call2.i31 = call i32 @regmap_write(ptr noundef %45, i32 noundef 2048, i32 noundef %and.i30) #7
  %46 = ptrtoint ptr %crgctrl.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %crgctrl.i, align 4
  %call4.i = call i32 @regmap_write(ptr noundef %47, i32 noundef 1140, i32 noundef 16384) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i32) #7
  %48 = ptrtoint ptr %val.i32 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %val.i32, align 4, !annotation !95
  %apb.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %phy, i32 0, i32 2
  %49 = ptrtoint ptr %apb.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %apb.i, align 4
  %call.i33 = call i32 @regmap_write(ptr noundef %50, i32 noundef 84, i32 noundef 536871024) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %51 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %val.i.i, align 4, !annotation !95
  %52 = ptrtoint ptr %crgctrl.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %crgctrl.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %53, i32 noundef 2048, ptr noundef nonnull %val.i.i) #7
  %54 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val.i.i, align 4
  %or.i.i = and i32 %55, -150072577
  %storemerge.i.i = or i32 %or.i.i, 150069504
  store i32 %storemerge.i.i, ptr %val.i.i, align 4
  %56 = ptrtoint ptr %crgctrl.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %crgctrl.i, align 4
  %call6.i.i = call i32 @regmap_write(ptr noundef %57, i32 noundef 2048, i32 noundef %storemerge.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %58 = ptrtoint ptr %crgctrl.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %crgctrl.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %59, i32 noundef 2048, ptr noundef nonnull %val.i32) #7
  %60 = ptrtoint ptr %val.i32 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val.i32, align 4
  %and.i34 = and i32 %61, -2
  store i32 %and.i34, ptr %val.i32, align 4
  %62 = ptrtoint ptr %crgctrl.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %crgctrl.i, align 4
  %call3.i = call i32 @regmap_write(ptr noundef %63, i32 noundef 2048, i32 noundef %and.i34) #7
  %64 = ptrtoint ptr %crgctrl.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %crgctrl.i, align 4
  %call5.i = call i32 @regmap_write(ptr noundef %65, i32 noundef 1140, i32 noundef 8192) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i32) #7
  %aclk = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %phy, i32 0, i32 9
  %66 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %aclk, align 4
  %call5 = call i32 @clk_set_rate(ptr noundef %67, i32 noundef 207500000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %do.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28) #10
  br label %close_clocks

close_clocks:                                     ; preds = %do.end10, %entry.close_clocks_crit_edge
  %ret.0 = phi i32 [ %call5, %do.end10 ], [ 0, %entry.close_clocks_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i36) #7
  %68 = ptrtoint ptr %val.i36 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %val.i36, align 4, !annotation !95
  %crgctrl6.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %phy, i32 0, i32 3
  %69 = ptrtoint ptr %crgctrl6.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %crgctrl6.i, align 4
  %call7.i = call i32 @regmap_read(ptr noundef %70, i32 noundef 2048, ptr noundef nonnull %val.i36) #7
  %71 = ptrtoint ptr %val.i36 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val.i36, align 4
  %or.i = or i32 %72, 1
  store i32 %or.i, ptr %val.i36, align 4
  %73 = ptrtoint ptr %crgctrl6.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %crgctrl6.i, align 4
  %call9.i = call i32 @regmap_write(ptr noundef %74, i32 noundef 2048, i32 noundef %or.i) #7
  %75 = ptrtoint ptr %crgctrl6.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %crgctrl6.i, align 4
  %call11.i = call i32 @regmap_write(ptr noundef %76, i32 noundef 1140, i32 noundef 8192) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i20.i) #7
  %77 = ptrtoint ptr %val.i20.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %val.i20.i, align 4, !annotation !95
  %78 = ptrtoint ptr %crgctrl6.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %crgctrl6.i, align 4
  %call.i22.i = call i32 @regmap_read(ptr noundef %79, i32 noundef 2048, ptr noundef nonnull %val.i20.i) #7
  %80 = ptrtoint ptr %val.i20.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %val.i20.i, align 4
  %or.i23.i = and i32 %81, -150072577
  %storemerge.i24.i = or i32 %or.i23.i, 150071552
  store i32 %storemerge.i24.i, ptr %val.i20.i, align 4
  %82 = ptrtoint ptr %crgctrl6.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %crgctrl6.i, align 4
  %call6.i25.i = call i32 @regmap_write(ptr noundef %83, i32 noundef 2048, i32 noundef %storemerge.i24.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i20.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i36) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i37) #7
  %84 = ptrtoint ptr %val.i37 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %val.i37, align 4, !annotation !95
  %85 = ptrtoint ptr %crgctrl6.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %crgctrl6.i, align 4
  %call.i39 = call i32 @regmap_read(ptr noundef %86, i32 noundef 2048, ptr noundef nonnull %val.i37) #7
  %87 = ptrtoint ptr %val.i37 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %val.i37, align 4
  %storemerge.i = or i32 %88, 2
  store i32 %storemerge.i, ptr %val.i37, align 4
  %89 = ptrtoint ptr %crgctrl6.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %crgctrl6.i, align 4
  %call2.i41 = call i32 @regmap_write(ptr noundef %90, i32 noundef 2048, i32 noundef %storemerge.i) #7
  %91 = ptrtoint ptr %crgctrl6.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %crgctrl6.i, align 4
  %call4.i42 = call i32 @regmap_write(ptr noundef %92, i32 noundef 1140, i32 noundef 16384) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i37) #7
  %93 = ptrtoint ptr %crgctrl6.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %crgctrl6.i, align 4
  %call2.i44 = call i32 @regmap_write(ptr noundef %94, i32 noundef 1140, i32 noundef 36864) #7
  %base.i.i.i45 = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %phy, i32 0, i32 1
  %95 = ptrtoint ptr %base.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i.i.i45, align 4
  %add.ptr1.i.i.i46 = getelementptr i8, ptr %96, i32 265280
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i46) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  %98 = or i32 %97, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  call void @arm_heavy_mb() #7
  %99 = ptrtoint ptr %base.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base.i.i.i45, align 4
  %add.ptr1.i7.i30.i = getelementptr i8, ptr %100, i32 265280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i30.i, i32 %98) #7, !srcloc !99
  %101 = ptrtoint ptr %base.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base.i.i.i45, align 4
  %add.ptr1.i.i33.i = getelementptr i8, ptr %102, i32 265296
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i33.i) #7, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %104 = or i32 %103, 256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  call void @arm_heavy_mb() #7
  %105 = ptrtoint ptr %base.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base.i.i.i45, align 4
  %add.ptr1.i7.i37.i = getelementptr i8, ptr %106, i32 265296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i37.i, i32 %104) #7, !srcloc !99
  br label %cleanup

cleanup:                                          ; preds = %close_clocks, %if.end4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %close_clocks ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hi3670_pcie_pll_ctrl(ptr nocapture noundef readonly %phy, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %base.i.i = getelementptr inbounds %struct.hi3670_pcie_phy, ptr %phy, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 265280
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i7.i = getelementptr i8, ptr %7, i32 265280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i, i32 %5) #7, !srcloc !99
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %9, i32 265728
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %11 = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not39 = icmp eq i32 %11, 0
  br i1 %tobool2.not39, label %if.then.while.body_crit_edge, label %if.then.while.end_crit_edge

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %if.then.while.body_crit_edge
  %time.040 = phi i32 [ %dec, %if.end.while.body_crit_edge ], [ 200, %if.then.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %time.040)
  %tobool3.not = icmp eq i32 %time.040, 0
  br i1 %tobool3.not, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end:                                           ; preds = %while.body
  %dec = add nsw i32 %time.040, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #7
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i18 = getelementptr i8, ptr %14, i32 265728
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i18) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %16 = and i32 %15, 268435456
  %tobool2.not = icmp eq i32 %16, 0
  br i1 %tobool2.not, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %if.then.while.end_crit_edge
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i.i21 = getelementptr i8, ptr %18, i32 265296
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i21) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %20 = and i32 %19, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i7.i24 = getelementptr i8, ptr %22, i32 265296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i24, i32 %20) #7, !srcloc !99
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %23 = or i32 %4, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i7.i30 = getelementptr i8, ptr %25, i32 265280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i30, i32 %23) #7, !srcloc !99
  %26 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i.i33 = getelementptr i8, ptr %27, i32 265296
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i33) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %29 = or i32 %28, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i7.i37 = getelementptr i8, ptr %31, i32 265296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i37, i32 %29) #7, !srcloc !99
  br label %cleanup

cleanup:                                          ; preds = %if.else, %while.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.else ], [ 0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_phy_hi3670_pcie__339_839_hi3670_pcie_phy_driver_init6, !1, !"__initcall__kmod_phy_hi3670_pcie__339_839_hi3670_pcie_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 839, i32 1}
!2 = !{ptr @__UNIQUE_ID_description340, !3, !"__UNIQUE_ID_description340", i1 false, i1 false}
!3 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 842, i32 1}
!4 = !{ptr @__UNIQUE_ID_author341, !5, !"__UNIQUE_ID_author341", i1 false, i1 false}
!5 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 843, i32 1}
!6 = !{ptr @__UNIQUE_ID_author342, !7, !"__UNIQUE_ID_author342", i1 false, i1 false}
!7 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 844, i32 1}
!8 = !{ptr @__UNIQUE_ID_file343, !9, !"__UNIQUE_ID_file343", i1 false, i1 false}
!9 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 845, i32 1}
!10 = !{ptr @__UNIQUE_ID_license344, !9, !"__UNIQUE_ID_license344", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 835, i32 12}
!13 = !{ptr @hi3670_pcie_phy_driver, !14, !"hi3670_pcie_phy_driver", i1 false, i1 false}
!14 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 831, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 814, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @hi3670_pcie_phy_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @hi3670_pcie_phy_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 751, i32 52}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 755, i32 52}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 759, i32 51}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 764, i32 39}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 768, i32 35}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 772, i32 39}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 776, i32 39}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 780, i32 32}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 223, i32 39}
!41 = !{ptr @hi3670_phy_ops, !42, !"hi3670_phy_ops", i1 false, i1 false}
!42 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 738, i32 29}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 560, i32 57}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 562, i32 3}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @hi3670_pcie_get_resources_from_pcie._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @hi3670_pcie_get_resources_from_pcie._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 569, i32 3}
!52 = !{ptr @hi3670_pcie_get_resources_from_pcie._entry.18, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @hi3670_pcie_get_resources_from_pcie._entry_ptr.20, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 581, i32 38}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 583, i32 3}
!58 = !{ptr @hi3670_pcie_get_resources_from_pcie._entry.22, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @hi3670_pcie_get_resources_from_pcie._entry_ptr.24, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 478, i32 3}
!62 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @hi3670_pcie_allclk_ctrl._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @hi3670_pcie_allclk_ctrl._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 487, i32 3}
!67 = !{ptr @hi3670_pcie_allclk_ctrl._entry.27, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @hi3670_pcie_allclk_ctrl._entry_ptr.29, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 349, i32 5}
!71 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @hi3670_pcie_pll_ctrl._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @hi3670_pcie_pll_ctrl._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 514, i32 4}
!76 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @is_pipe_clk_stable._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @is_pipe_clk_stable._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 544, i32 4}
!81 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @hi3670_pcie_noc_power._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @hi3670_pcie_noc_power._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @hi3670_pcie_phy_match, !85, !"hi3670_pcie_phy_match", i1 false, i1 false}
!85 = !{!"../drivers/phy/hisilicon/phy-hi3670-pcie.c", i32 824, i32 34}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{!"auto-init"}
!96 = !{i64 4929459}
!97 = !{i64 2155310108}
!98 = !{i64 2155309230}
!99 = !{i64 4929041}
!100 = !{i64 2155311478}
!101 = !{i64 2155310658}
