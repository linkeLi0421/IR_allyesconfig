; ModuleID = '/llk/IR_all_yes/drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c_pt.bc'
source_filename = "../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ltq_vrx200_pcie_phy_priv = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_lantiq_vrx200_pcie__299_489_ltq_vrx200_pcie_phy_driver_init6 = internal global ptr @ltq_vrx200_pcie_phy_driver_init, section ".initcall6.init", align 4
@ltq_vrx200_pcie_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ltq_vrx200_pcie_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ltq_vrx200_pcie_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ltq_vrx200_pcie_phy_driver_exit = internal global ptr @ltq_vrx200_pcie_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author300 = internal constant [87 x i8] c"phy_lantiq_vrx200_pcie.author=Martin Blumenstingl <martin.blumenstingl@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [76 x i8] c"phy_lantiq_vrx200_pcie.description=Lantiq VRX200 and ARX300 PCIe PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [70 x i8] c"phy_lantiq_vrx200_pcie.file=drivers/phy/lantiq/phy-lantiq-vrx200-pcie\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [38 x i8] c"phy_lantiq_vrx200_pcie.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ltq-vrx200-pcie-phy\00", [44 x i8] zeroinitializer }, align 32
@ltq_vrx200_pcie_phy_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,vrx200-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,arx300-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ltq_vrx200_pcie_phy_probe.regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 2, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 170, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@ltq_vrx200_pcie_phy_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"phy_lantiq_vrx200_pcie:416:(&regmap_config)->lock\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lantiq,rcu\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lantiq,rcu-endian-offset\00", [39 x i8] zeroinitializer }, align 32
@ltq_vrx200_pcie_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 429, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"failed to parse the 'lantiq,rcu-endian-offset' property\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ltq_vrx200_pcie_phy_probe\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ltq_vrx200_pcie_phy_probe._entry_ptr = internal global ptr @ltq_vrx200_pcie_phy_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lantiq,rcu-big-endian-mask\00", [37 x i8] zeroinitializer }, align 32
@ltq_vrx200_pcie_phy_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 437, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"failed to parse the 'lantiq,rcu-big-endian-mask' property\0A\00", [37 x i8] zeroinitializer }, align 32
@ltq_vrx200_pcie_phy_probe._entry_ptr.12 = internal global ptr @ltq_vrx200_pcie_phy_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pdi\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcie\00", [27 x i8] zeroinitializer }, align 32
@ltq_vrx200_pcie_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @ltq_vrx200_pcie_phy_init, ptr @ltq_vrx200_pcie_phy_exit, ptr @ltq_vrx200_pcie_phy_power_on, ptr @ltq_vrx200_pcie_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ltq_vrx200_pcie_phy_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 462, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@ltq_vrx200_pcie_phy_probe._entry_ptr.18 = internal global ptr @ltq_vrx200_pcie_phy_probe._entry.16, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ltq_vrx200_pcie_phy_wait_for_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.6, i32 192, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PLL Link timeout, PLL status = 0x%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ltq_vrx200_pcie_phy_wait_for_pll\00", [63 x i8] zeroinitializer }, align 32
@ltq_vrx200_pcie_phy_wait_for_pll._entry_ptr = internal global ptr @ltq_vrx200_pcie_phy_wait_for_pll._entry, section ".printk_index", align 4
@ltq_vrx200_pcie_phy_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.6, i32 367, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid number of arguments\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ltq_vrx200_pcie_phy_xlate\00", [38 x i8] zeroinitializer }, align 32
@ltq_vrx200_pcie_phy_xlate._entry_ptr = internal global ptr @ltq_vrx200_pcie_phy_xlate._entry, section ".printk_index", align 4
@ltq_vrx200_pcie_phy_xlate._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.6, i32 383, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PHY mode not implemented yet: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@ltq_vrx200_pcie_phy_xlate._entry_ptr.25 = internal global ptr @ltq_vrx200_pcie_phy_xlate._entry.23, section ".printk_index", align 4
@ltq_vrx200_pcie_phy_xlate._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.6, i32 387, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid PHY mode %u\0A\00", [43 x i8] zeroinitializer }, align 32
@ltq_vrx200_pcie_phy_xlate._entry_ptr.28 = internal global ptr @ltq_vrx200_pcie_phy_xlate._entry.26, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.29 = private unnamed_addr constant [27 x i8] c"ltq_vrx200_pcie_phy_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 482, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 485, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [29 x i8] c"ltq_vrx200_pcie_phy_of_match\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 475, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"regmap_config\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 396, i32 36 }
@___asan_gen_.41 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 416, i32 21 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 421, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 425, i32 38 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 428, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 433, i32 38 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 436, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 441, i32 36 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 445, i32 36 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 453, i32 56 }
@___asan_gen_.89 = private unnamed_addr constant [24 x i8] c"ltq_vrx200_pcie_phy_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 352, i32 29 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 462, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 191, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 367, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 383, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [47 x i8] c"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 387, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_ltq_vrx200_pcie_phy_driver_exit, ptr @__initcall__kmod_phy_lantiq_vrx200_pcie__299_489_ltq_vrx200_pcie_phy_driver_init6, ptr @ltq_vrx200_pcie_phy_driver_exit, ptr @ltq_vrx200_pcie_phy_probe._entry, ptr @ltq_vrx200_pcie_phy_probe._entry.10, ptr @ltq_vrx200_pcie_phy_probe._entry.16, ptr @ltq_vrx200_pcie_phy_probe._entry_ptr, ptr @ltq_vrx200_pcie_phy_probe._entry_ptr.12, ptr @ltq_vrx200_pcie_phy_probe._entry_ptr.18, ptr @ltq_vrx200_pcie_phy_wait_for_pll._entry, ptr @ltq_vrx200_pcie_phy_wait_for_pll._entry_ptr, ptr @ltq_vrx200_pcie_phy_xlate._entry, ptr @ltq_vrx200_pcie_phy_xlate._entry.23, ptr @ltq_vrx200_pcie_phy_xlate._entry.26, ptr @ltq_vrx200_pcie_phy_xlate._entry_ptr, ptr @ltq_vrx200_pcie_phy_xlate._entry_ptr.25, ptr @ltq_vrx200_pcie_phy_xlate._entry_ptr.28, ptr @ltq_vrx200_pcie_phy_driver, ptr @.str, ptr @ltq_vrx200_pcie_phy_of_match, ptr @ltq_vrx200_pcie_phy_probe.regmap_config, ptr @ltq_vrx200_pcie_phy_probe._key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ltq_vrx200_pcie_phy_ops, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_vrx200_pcie_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_vrx200_pcie_phy_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_vrx200_pcie_phy_probe.regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_vrx200_pcie_phy_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_vrx200_pcie_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_vrx200_pcie_phy_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_vrx200_pcie_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_vrx200_pcie_phy_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_vrx200_pcie_phy_wait_for_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_vrx200_pcie_phy_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_vrx200_pcie_phy_xlate._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_vrx200_pcie_phy_xlate._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ltq_vrx200_pcie_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ltq_vrx200_pcie_phy_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ltq_vrx200_pcie_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ltq_vrx200_pcie_phy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltq_vrx200_pcie_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #5
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
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @ltq_vrx200_pcie_phy_probe.regmap_config, ptr noundef nonnull @ltq_vrx200_pcie_phy_probe._key, ptr noundef nonnull @.str.1) #5
  %phy_regmap = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %phy_regmap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %phy_regmap, align 4
  %cmp.i128 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call14 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %4, ptr noundef nonnull @.str.2) #5
  %rcu_regmap = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %rcu_regmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call14, ptr %rcu_regmap, align 4
  %cmp.i129 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %rcu_ahb_endian_offset = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %call.i, i32 0, i32 9
  %call.i130 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef %rcu_ahb_endian_offset, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool22.not = icmp eq i32 %call.i130, 0
  br i1 %tobool22.not, label %if.end24, label %do.end

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %rcu_ahb_endian_big_endian_mask = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %call.i, i32 0, i32 10
  %call.i131 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.9, ptr noundef %rcu_ahb_endian_big_endian_mask, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool26.not = icmp eq i32 %call.i131, 0
  br i1 %tobool26.not, label %if.end31, label %do.end30

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %call32 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.13) #5
  %pdi_clk = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %pdi_clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call32, ptr %pdi_clk, align 4
  %cmp.i132 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  %call39 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.14) #5
  %phy_clk = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %phy_clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call39, ptr %phy_clk, align 4
  %cmp.i133 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call39 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  %call.i134 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %phy_reset = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %phy_reset to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i134, ptr %phy_reset, align 4
  %cmp.i135 = icmp ugt ptr %call.i134, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call.i134 to i32
  br label %cleanup

if.end52:                                         ; preds = %if.end45
  %call.i136 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %pcie_reset = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %pcie_reset to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i136, ptr %pcie_reset, align 4
  %cmp.i137 = icmp ugt ptr %call.i136, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i137, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call.i136 to i32
  br label %cleanup

if.end59:                                         ; preds = %if.end52
  %dev60 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %dev60 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev1, ptr %dev60, align 4
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call62 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %17, ptr noundef nonnull @ltq_vrx200_pcie_phy_ops) #5
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call62, ptr %call.i, align 4
  %cmp.i138 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138, label %do.end68, label %if.end71

do.end68:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #8
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup

if.end71:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call62, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call73 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @ltq_vrx200_pcie_phy_xlate) #5
  %cmp.i.i = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  %24 = ptrtoint ptr %call73 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %24, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %do.end68, %if.then56, %if.then49, %if.then42, %if.then35, %do.end30, %do.end, %if.then17, %if.then10, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then4 ], [ %2, %if.then10 ], [ %6, %if.then17 ], [ %call.i130, %do.end ], [ %call.i131, %do.end30 ], [ %8, %if.then35 ], [ %10, %if.then42 ], [ %12, %if.then49 ], [ %14, %if.then56 ], [ %21, %do.end68 ], [ %spec.select.i, %if.end71 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ltq_vrx200_pcie_phy_xlate(ptr noundef %dev, ptr nocapture noundef readonly %args) #2 align 64 {
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
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %args2 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %args2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args2, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end11 [
    i32 2, label %sw.bb
    i32 0, label %if.end.do.end7_crit_edge
    i32 1, label %if.end.do.end7_crit_edge22
    i32 3, label %if.end.do.end7_crit_edge23
    i32 4, label %if.end.do.end7_crit_edge24
    i32 5, label %if.end.do.end7_crit_edge25
  ]

if.end.do.end7_crit_edge25:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

if.end.do.end7_crit_edge24:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

if.end.do.end7_crit_edge23:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

if.end.do.end7_crit_edge22:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %mode3 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %mode3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %mode3, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  br label %cleanup

do.end7:                                          ; preds = %if.end.do.end7_crit_edge, %if.end.do.end7_crit_edge22, %if.end.do.end7_crit_edge23, %if.end.do.end7_crit_edge24, %if.end.do.end7_crit_edge25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %5) #8
  br label %cleanup

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %do.end7, %sw.bb, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end11 ], [ inttoptr (i32 -22 to ptr), %do.end7 ], [ %9, %sw.bb ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltq_vrx200_pcie_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call1 = tail call zeroext i1 @of_device_is_big_endian(ptr noundef %5) #5
  %rcu_regmap = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %rcu_regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rcu_regmap, align 4
  %rcu_ahb_endian_offset = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %rcu_ahb_endian_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rcu_ahb_endian_offset, align 4
  %rcu_ahb_endian_big_endian_mask = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %rcu_ahb_endian_big_endian_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rcu_ahb_endian_big_endian_mask, align 4
  %. = select i1 %call1, i32 %11, i32 0
  %call.i37 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %phy_reset = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_reset, align 4
  %call8 = tail call i32 @reset_control_assert(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #5
  %15 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_reset, align 4
  %call12 = tail call i32 @reset_control_deassert(ptr noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #5
  %pcie_reset = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %pcie_reset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcie_reset, align 4
  %call16 = tail call i32 @reset_control_deassert(ptr noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %err_assert_phy_reset

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #5
  br label %cleanup

err_assert_phy_reset:                             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy_reset, align 4
  %call21 = tail call i32 @reset_control_assert(ptr noundef %21) #5
  br label %cleanup

cleanup:                                          ; preds = %err_assert_phy_reset, %if.end19, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ %call8, %entry.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ %call16, %err_assert_phy_reset ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltq_vrx200_pcie_phy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pcie_reset = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pcie_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_reset, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %phy_reset = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_reset, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltq_vrx200_pcie_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdi_clk = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pdi_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdi_clk, align 4
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
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %phy_regmap.i = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %phy_regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_regmap.i, align 4
  %call1.i23 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 82, i32 noundef 4622) #5
  %8 = ptrtoint ptr %phy_regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_regmap.i, align 4
  %call3.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 84, i32 noundef 14807) #5
  %10 = ptrtoint ptr %phy_regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_regmap.i, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 86, i32 noundef 2304) #5
  %12 = ptrtoint ptr %phy_regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_regmap.i, align 4
  %call7.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 166, i32 noundef 4) #5
  %14 = ptrtoint ptr %phy_regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_regmap.i, align 4
  %call9.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 170, i32 noundef 26627) #5
  %16 = ptrtoint ptr %phy_regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 96, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %18 = ptrtoint ptr %phy_regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_regmap.i, align 4
  %call13.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 104, i32 noundef 1798) #5
  %20 = ptrtoint ptr %phy_regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy_regmap.i, align 4
  %call15.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 100, i32 noundef 8191) #5
  %22 = ptrtoint ptr %phy_regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_regmap.i, align 4
  %call17.i = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 102, i32 noundef 2064) #5
  %24 = ptrtoint ptr %phy_regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy_regmap.i, align 4
  %call.i41.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 120, i32 noundef 32512, i32 noundef 18176, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %26 = ptrtoint ptr %phy_regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy_regmap.i, align 4
  %call21.i = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 98, i32 noundef 11776) #5
  %28 = ptrtoint ptr %phy_regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy_regmap.i, align 4
  %call23.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 114, i32 noundef 12438) #5
  %30 = ptrtoint ptr %phy_regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy_regmap.i, align 4
  %call25.i = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 120, i32 noundef 18183) #5
  %32 = ptrtoint ptr %phy_regmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy_regmap.i, align 4
  %call27.i = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 164, i32 noundef 565) #5
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i, align 4
  %phy_regmap.i25 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %phy_regmap.i25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy_regmap.i25, align 4
  %call.i.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 72, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %38 = ptrtoint ptr %phy_regmap.i25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy_regmap.i25, align 4
  %call.i63.i = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 72, i32 noundef 112, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %40 = ptrtoint ptr %phy_regmap.i25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %phy_regmap.i25, align 4
  %call.i64.i = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 70, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %42 = ptrtoint ptr %phy_regmap.i25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy_regmap.i25, align 4
  %call.i65.i = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 70, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %44 = ptrtoint ptr %phy_regmap.i25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %phy_regmap.i25, align 4
  %call.i66.i = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 86, i32 noundef 57344, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %46 = ptrtoint ptr %phy_regmap.i25 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %phy_regmap.i25, align 4
  %call.i67.i = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 84, i32 noundef 16384, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %48 = ptrtoint ptr %phy_regmap.i25 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %phy_regmap.i25, align 4
  %call25.i27 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 68, i32 noundef 14564) #5
  %50 = ptrtoint ptr %phy_regmap.i25 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phy_regmap.i25, align 4
  %call.i68.i = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 70, i32 noundef 255, i32 noundef 238, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %52 = ptrtoint ptr %phy_regmap.i25 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %phy_regmap.i25, align 4
  %call45.i = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 80, i32 noundef 2) #5
  %54 = ptrtoint ptr %phy_regmap.i25 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %phy_regmap.i25, align 4
  %call47.i = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 78, i32 noundef 14852) #5
  %56 = ptrtoint ptr %phy_regmap.i25 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %phy_regmap.i25, align 4
  %call49.i = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 76, i32 noundef 64227) #5
  %58 = ptrtoint ptr %phy_regmap.i25 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phy_regmap.i25, align 4
  %call51.i = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 74, i32 noundef 7026) #5
  %phy_clk = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %1, i32 0, i32 6
  %60 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %phy_clk, align 4
  %call.i28 = tail call i32 @clk_prepare(ptr noundef %61) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i29, label %if.end.i32, label %if.end.err_disable_pdi_clk_crit_edge

if.end.err_disable_pdi_clk_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disable_pdi_clk

if.end.i32:                                       ; preds = %if.end
  %call1.i30 = tail call i32 @clk_enable(ptr noundef %61) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool2.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool2.not.i31, label %if.end5, label %if.then3.i33

if.then3.i33:                                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %61) #5
  br label %err_disable_pdi_clk

if.end5:                                          ; preds = %if.end.i32
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %64 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %tmp.i, align 4, !annotation !80
  %call1.i37 = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call1.i37, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 189) #5
  %phy_regmap.i38 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %63, i32 0, i32 3
  %65 = ptrtoint ptr %phy_regmap.i38 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %phy_regmap.i38, align 4
  %call961.i = call i32 @regmap_read(ptr noundef %66, i32 noundef 88, ptr noundef nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call961.i)
  %tobool.not62.i = icmp eq i32 %call961.i, 0
  br i1 %tobool.not62.i, label %if.end5.lor.lhs.false.i_crit_edge, label %if.end5.err_disable_phy_clk_crit_edge

if.end5.err_disable_phy_clk_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disable_phy_clk

if.end5.lor.lhs.false.i_crit_edge:                ; preds = %if.end5
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then22.i.lor.lhs.false.i_crit_edge, %if.end5.lor.lhs.false.i_crit_edge
  %67 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tmp.i, align 4
  %and.i = and i32 %68, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %and.i)
  %cmp10.i = icmp eq i32 %and.i, 112
  br i1 %cmp10.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call14.i = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call14.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call14.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then22.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %69 = ptrtoint ptr %phy_regmap.i38 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %phy_regmap.i38, align 4
  %call9.i39 = call i32 @regmap_read(ptr noundef %70, i32 noundef 88, ptr noundef nonnull %tmp.i) #5
  %tobool.not.i40 = icmp eq i32 %call9.i39, 0
  br i1 %tobool.not.i40, label %if.then22.i.lor.lhs.false.i_crit_edge, label %if.then22.i.err_disable_phy_clk_crit_edge

if.then22.i.err_disable_phy_clk_crit_edge:        ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disable_phy_clk

if.then22.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %71 = ptrtoint ptr %phy_regmap.i38 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %phy_regmap.i38, align 4
  %call19.i = call i32 @regmap_read(ptr noundef %72, i32 noundef 88, ptr noundef nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool25.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool25.not.i, label %for.end.i.lor.rhs.i_crit_edge, label %for.end.i.err_disable_phy_clk_crit_edge

for.end.i.err_disable_phy_clk_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disable_phy_clk

for.end.i.lor.rhs.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.end.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %73 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tmp.i, align 4
  %and26.i = and i32 %74, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %and26.i)
  %cmp27.i = icmp eq i32 %and26.i, 112
  br i1 %cmp27.i, label %if.end9, label %lor.rhs.i.err_disable_phy_clk_crit_edge

lor.rhs.i.err_disable_phy_clk_crit_edge:          ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disable_phy_clk

if.end9:                                          ; preds = %lor.rhs.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  %75 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %driver_data.i.i, align 4
  %phy_regmap.i42 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %phy_regmap.i42 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %phy_regmap.i42, align 4
  %call.i.i43 = call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 96, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %79(i32 noundef 214748) #5
  %80 = ptrtoint ptr %phy_regmap.i42 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %phy_regmap.i42, align 4
  %call.i50.i = call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef 96, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %82 = ptrtoint ptr %phy_regmap.i42 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %phy_regmap.i42, align 4
  %call.i.1.i = call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef 112, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %84(i32 noundef 214748) #5
  %85 = ptrtoint ptr %phy_regmap.i42 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %phy_regmap.i42, align 4
  %call.i50.1.i = call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 112, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %87 = ptrtoint ptr %phy_regmap.i42 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %phy_regmap.i42, align 4
  %call.i.2.i = call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef 160, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %89(i32 noundef 214748) #5
  %90 = ptrtoint ptr %phy_regmap.i42 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %phy_regmap.i42, align 4
  %call.i50.2.i = call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef 160, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.body13.i.for.body13.i_crit_edge, %if.end9
  %i.152.i = phi i32 [ 0, %if.end9 ], [ %inc31.i, %for.body13.i.for.body13.i_crit_edge ]
  %92 = ptrtoint ptr %phy_regmap.i42 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %phy_regmap.i42, align 4
  %call15.i44 = call i32 @regmap_write(ptr noundef %93, i32 noundef 122, i32 noundef 8190) #5
  %94 = ptrtoint ptr %phy_regmap.i42 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %phy_regmap.i42, align 4
  %call17.i45 = call i32 @regmap_write(ptr noundef %95, i32 noundef 124, i32 noundef 65534) #5
  %96 = ptrtoint ptr %phy_regmap.i42 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %phy_regmap.i42, align 4
  %call19.i46 = call i32 @regmap_write(ptr noundef %97, i32 noundef 126, i32 noundef 1537) #5
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %98 = ptrtoint ptr %phy_regmap.i42 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %phy_regmap.i42, align 4
  %call21.i47 = call i32 @regmap_write(ptr noundef %99, i32 noundef 126, i32 noundef 1) #5
  %100 = ptrtoint ptr %phy_regmap.i42 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %phy_regmap.i42, align 4
  %call23.i48 = call i32 @regmap_write(ptr noundef %101, i32 noundef 106, i32 noundef 8190) #5
  %102 = ptrtoint ptr %phy_regmap.i42 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %phy_regmap.i42, align 4
  %call25.i49 = call i32 @regmap_write(ptr noundef %103, i32 noundef 108, i32 noundef 65534) #5
  %104 = ptrtoint ptr %phy_regmap.i42 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %phy_regmap.i42, align 4
  %call27.i50 = call i32 @regmap_write(ptr noundef %105, i32 noundef 110, i32 noundef 1537) #5
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %106 = ptrtoint ptr %phy_regmap.i42 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %phy_regmap.i42, align 4
  %call29.i = call i32 @regmap_write(ptr noundef %107, i32 noundef 110, i32 noundef 1) #5
  %inc31.i = add nuw nsw i32 %i.152.i, 1
  %exitcond.not.i = icmp eq i32 %inc31.i, 5
  br i1 %exitcond.not.i, label %for.body13.i.cleanup_crit_edge, label %for.body13.i.for.body13.i_crit_edge

for.body13.i.for.body13.i_crit_edge:              ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body13.i

for.body13.i.cleanup_crit_edge:                   ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_disable_phy_clk:                              ; preds = %lor.rhs.i.err_disable_phy_clk_crit_edge, %for.end.i.err_disable_phy_clk_crit_edge, %if.then22.i.err_disable_phy_clk_crit_edge, %if.end5.err_disable_phy_clk_crit_edge
  %tobool25.not52.ph.i = phi i32 [ %call961.i, %if.end5.err_disable_phy_clk_crit_edge ], [ -110, %lor.rhs.i.err_disable_phy_clk_crit_edge ], [ %call19.i, %for.end.i.err_disable_phy_clk_crit_edge ], [ %call9.i39, %if.then22.i.err_disable_phy_clk_crit_edge ]
  %dev.i = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %63, i32 0, i32 2
  %108 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i, align 4
  %110 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tmp.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.19, i32 noundef %111) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  %112 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %phy_clk, align 4
  call void @clk_disable(ptr noundef %113) #5
  call void @clk_unprepare(ptr noundef %113) #5
  br label %err_disable_pdi_clk

err_disable_pdi_clk:                              ; preds = %err_disable_phy_clk, %if.then3.i33, %if.end.err_disable_pdi_clk_crit_edge
  %ret.0 = phi i32 [ %tobool25.not52.ph.i, %err_disable_phy_clk ], [ %call1.i30, %if.then3.i33 ], [ %call.i28, %if.end.err_disable_pdi_clk_crit_edge ]
  %114 = ptrtoint ptr %pdi_clk to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pdi_clk, align 4
  call void @clk_disable(ptr noundef %115) #5
  call void @clk_unprepare(ptr noundef %115) #5
  br label %cleanup

cleanup:                                          ; preds = %err_disable_pdi_clk, %for.body13.i.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_disable_pdi_clk ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %for.body13.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltq_vrx200_pcie_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %phy_clk = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  %pdi_clk = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %pdi_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdi_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_big_endian(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !36, !37, !39, !41, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_phy_lantiq_vrx200_pcie__299_489_ltq_vrx200_pcie_phy_driver_init6, !1, !"__initcall__kmod_phy_lantiq_vrx200_pcie__299_489_ltq_vrx200_pcie_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 489, i32 1}
!2 = !{ptr @__exitcall_ltq_vrx200_pcie_phy_driver_exit, !1, !"__exitcall_ltq_vrx200_pcie_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author300, !4, !"__UNIQUE_ID_author300", i1 false, i1 false}
!4 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 491, i32 1}
!5 = !{ptr @__UNIQUE_ID_description301, !6, !"__UNIQUE_ID_description301", i1 false, i1 false}
!6 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 492, i32 1}
!7 = !{ptr @__UNIQUE_ID_file302, !8, !"__UNIQUE_ID_file302", i1 false, i1 false}
!8 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 493, i32 1}
!9 = !{ptr @__UNIQUE_ID_license303, !8, !"__UNIQUE_ID_license303", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 485, i32 11}
!12 = !{ptr @ltq_vrx200_pcie_phy_driver, !13, !"ltq_vrx200_pcie_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 482, i32 31}
!14 = !{ptr @ltq_vrx200_pcie_phy_probe.regmap_config, !15, !"regmap_config", i1 false, i1 false}
!15 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 396, i32 36}
!16 = !{ptr @ltq_vrx200_pcie_phy_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 416, i32 21}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 421, i32 11}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 425, i32 38}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 428, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ltq_vrx200_pcie_phy_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @ltq_vrx200_pcie_phy_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 433, i32 38}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 436, i32 3}
!35 = !{ptr @ltq_vrx200_pcie_phy_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ltq_vrx200_pcie_phy_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 441, i32 36}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 445, i32 36}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 453, i32 56}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 462, i32 3}
!45 = !{ptr @ltq_vrx200_pcie_phy_probe._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ltq_vrx200_pcie_phy_probe._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @ltq_vrx200_pcie_phy_ops, !48, !"ltq_vrx200_pcie_phy_ops", i1 false, i1 false}
!48 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 352, i32 29}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 191, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ltq_vrx200_pcie_phy_wait_for_pll._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ltq_vrx200_pcie_phy_wait_for_pll._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = distinct !{null, !55, !"slices", i1 false, i1 false}
!55 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 202, i32 34}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 367, i32 3}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ltq_vrx200_pcie_phy_xlate._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @ltq_vrx200_pcie_phy_xlate._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 383, i32 3}
!63 = !{ptr @ltq_vrx200_pcie_phy_xlate._entry.23, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ltq_vrx200_pcie_phy_xlate._entry_ptr.25, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 387, i32 3}
!67 = !{ptr @ltq_vrx200_pcie_phy_xlate._entry.26, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ltq_vrx200_pcie_phy_xlate._entry_ptr.28, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @ltq_vrx200_pcie_phy_of_match, !70, !"ltq_vrx200_pcie_phy_of_match", i1 false, i1 false}
!70 = !{!"../drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c", i32 475, i32 34}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"auto-init"}
