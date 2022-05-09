; ModuleID = '/llk/IR_all_yes/drivers/phy/intel/phy-intel-lgm-combo.c_pt.bc'
source_filename = "../drivers/phy/intel/phy-intel-lgm-combo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.fwnode_reference_args = type { ptr, i32, [8 x i64] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.intel_combo_phy = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [2 x %struct.intel_cbphy_iphy], i32, i32, i32, %struct.mutex }
%struct.intel_cbphy_iphy = type { ptr, ptr, ptr, i32 }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_intel_lgm_combo__310_631_intel_cbphy_driver_init6 = internal global ptr @intel_cbphy_driver_init, section ".initcall6.init", align 4
@intel_cbphy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @intel_cbphy_probe, ptr @intel_cbphy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_intel_cbphy_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_intel_cbphy_driver_exit = internal global ptr @intel_cbphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description311 = internal constant [55 x i8] c"phy_intel_lgm_combo.description=Intel Combo-phy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [63 x i8] c"phy_intel_lgm_combo.file=drivers/phy/intel/phy-intel-lgm-combo\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [35 x i8] c"phy_intel_lgm_combo.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"intel-combo-phy\00", [16 x i8] zeroinitializer }, align 32
@of_intel_cbphy_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,combo-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,combophy-lgm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@intel_cbphy_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&cbphy->lock\00", [19 x i8] zeroinitializer }, align 32
@intel_cbphy_fwnode_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 419, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Get clk failed:%d!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"intel_cbphy_fwnode_parse\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/phy/intel/phy-intel-lgm-combo.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@intel_cbphy_fwnode_parse._entry_ptr = internal global ptr @intel_cbphy_fwnode_parse._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@intel_cbphy_fwnode_parse._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 427, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Get core reset control err: %d!\0A\00", [63 x i8] zeroinitializer }, align 32
@intel_cbphy_fwnode_parse._entry_ptr.10 = internal global ptr @intel_cbphy_fwnode_parse._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@intel_cbphy_fwnode_parse._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 435, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Get PHY reset control err: %d!\0A\00", [32 x i8] zeroinitializer }, align 32
@intel_cbphy_fwnode_parse._entry_ptr.14 = internal global ptr @intel_cbphy_fwnode_parse._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iphy0\00", [26 x i8] zeroinitializer }, align 32
@intel_cbphy_fwnode_parse._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 443, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Get phy0 reset control err: %d!\0A\00", [63 x i8] zeroinitializer }, align 32
@intel_cbphy_fwnode_parse._entry_ptr.18 = internal global ptr @intel_cbphy_fwnode_parse._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iphy1\00", [26 x i8] zeroinitializer }, align 32
@intel_cbphy_fwnode_parse._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 451, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Get phy1 reset control err: %d!\0A\00", [63 x i8] zeroinitializer }, align 32
@intel_cbphy_fwnode_parse._entry_ptr.22 = internal global ptr @intel_cbphy_fwnode_parse._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"app\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intel,syscfg\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"intel,hsio\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"intel,phy-mode\00", [17 x i8] zeroinitializer }, align 32
@intel_cbphy_fwnode_parse._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 504, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid PHY mode: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@intel_cbphy_fwnode_parse._entry_ptr.29 = internal global ptr @intel_cbphy_fwnode_parse._entry.27, section ".printk_index", align 4
@intel_iphy_clk_rates = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 100000000, i32 156250000, i32 100000000], [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"intel,aggregation\00", [46 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@intel_cbphy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @intel_cbphy_init, ptr @intel_cbphy_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @intel_cbphy_calibrate, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@intel_cbphy_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 569, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PHY[%u:%u]: create PHY instance failed!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"intel_cbphy_create\00", [45 x i8] zeroinitializer }, align 32
@intel_cbphy_create._entry_ptr = internal global ptr @intel_cbphy_create._entry, section ".printk_index", align 4
@intel_cbphy_create._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.4, i32 580, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Register PHY provider failed!\0A\00", [33 x i8] zeroinitializer }, align 32
@intel_cbphy_create._entry_ptr.35 = internal global ptr @intel_cbphy_create._entry.33, section ".printk_index", align 4
@intel_cbphy_iphy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 260, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Clock enable failed!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"intel_cbphy_iphy_power_on\00", [38 x i8] zeroinitializer }, align 32
@intel_cbphy_iphy_power_on._entry_ptr = internal global ptr @intel_cbphy_iphy_power_on._entry, section ".printk_index", align 4
@intel_cbphy_iphy_power_on._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.4, i32 267, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Clock freq set to %lu failed!\0A\00", [33 x i8] zeroinitializer }, align 32
@intel_cbphy_iphy_power_on._entry_ptr.40 = internal global ptr @intel_cbphy_iphy_power_on._entry.38, section ".printk_index", align 4
@intel_cbphy_iphy_power_on._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.4, i32 280, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed enabling PHY core\0A\00", [38 x i8] zeroinitializer }, align 32
@intel_cbphy_iphy_power_on._entry_ptr.43 = internal global ptr @intel_cbphy_iphy_power_on._entry.41, section ".printk_index", align 4
@intel_cbphy_iphy_power_on._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.4, i32 287, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PHY(%u:%u) reset deassert failed!\0A\00", [61 x i8] zeroinitializer }, align 32
@intel_cbphy_iphy_power_on._entry_ptr.46 = internal global ptr @intel_cbphy_iphy_power_on._entry.44, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@intel_cbphy_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 221, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Mode:%u not support dual lane!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"intel_cbphy_set_mode\00", [43 x i8] zeroinitializer }, align 32
@intel_cbphy_set_mode._entry_ptr = internal global ptr @intel_cbphy_set_mode._entry, section ".printk_index", align 4
@intel_cbphy_set_mode._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.4, i32 233, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set ComboPhy mode: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@intel_cbphy_set_mode._entry_ptr.51 = internal global ptr @intel_cbphy_set_mode._entry.49, section ".printk_index", align 4
@intel_cbphy_pcie_en_pad_refclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 164, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to enable PCIe pad refclk\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"intel_cbphy_pcie_en_pad_refclk\00", [33 x i8] zeroinitializer }, align 32
@intel_cbphy_pcie_en_pad_refclk._entry_ptr = internal global ptr @intel_cbphy_pcie_en_pad_refclk._entry, section ".printk_index", align 4
@intel_cbphy_pcie_dis_pad_refclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 187, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to disable PCIe pad refclk\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"intel_cbphy_pcie_dis_pad_refclk\00", [32 x i8] zeroinitializer }, align 32
@intel_cbphy_pcie_dis_pad_refclk._entry_ptr = internal global ptr @intel_cbphy_pcie_dis_pad_refclk._entry, section ".printk_index", align 4
@intel_cbphy_iphy_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.4, i32 310, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PHY(%u:%u) reset assert failed!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"intel_cbphy_iphy_power_off\00", [37 x i8] zeroinitializer }, align 32
@intel_cbphy_iphy_power_off._entry_ptr = internal global ptr @intel_cbphy_iphy_power_off._entry, section ".printk_index", align 4
@intel_cbphy_iphy_power_off._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.4, i32 316, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed disabling PHY core\0A\00", [37 x i8] zeroinitializer }, align 32
@intel_cbphy_iphy_power_off._entry_ptr.60 = internal global ptr @intel_cbphy_iphy_power_off._entry.58, section ".printk_index", align 4
@intel_cbphy_calibrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.4, i32 395, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX Adaptation failed!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"intel_cbphy_calibrate\00", [42 x i8] zeroinitializer }, align 32
@intel_cbphy_calibrate._entry_ptr = internal global ptr @intel_cbphy_calibrate._entry, section ".printk_index", align 4
@intel_cbphy_calibrate.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.63, ptr @.str.62, ptr @.str.4, ptr @.str.64, i8 0, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"phy_intel_lgm_combo\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RX Adaptation success!\0A\00", [40 x i8] zeroinitializer }, align 32
@intel_cbphy_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 532, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid number of arguments\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"intel_cbphy_xlate\00", [46 x i8] zeroinitializer }, align 32
@intel_cbphy_xlate._entry_ptr = internal global ptr @intel_cbphy_xlate._entry, section ".printk_index", align 4
@intel_cbphy_xlate._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.4, i32 538, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid phy instance %d\0A\00", [39 x i8] zeroinitializer }, align 32
@intel_cbphy_xlate._entry_ptr.69 = internal global ptr @intel_cbphy_xlate._entry.67, section ".printk_index", align 4
@intel_cbphy_xlate._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.4, i32 543, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid. ComboPhy is in Dual lane mode %d\0A\00", [53 x i8] zeroinitializer }, align 32
@intel_cbphy_xlate._entry_ptr.72 = internal global ptr @intel_cbphy_xlate._entry.70, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 7]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c"intel_cbphy_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 622, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 626, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [21 x i8] c"of_intel_cbphy_match\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 616, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 597, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 419, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 423, i32 57 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 427, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 431, i32 56 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 435, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 439, i32 64 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 443, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 447, i32 64 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 451, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 455, i32 64 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 468, i32 51 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 477, i32 51 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 486, i32 47 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 504, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [21 x i8] c"intel_iphy_clk_rates\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 43, i32 28 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 510, i32 38 }
@___asan_gen_.167 = private unnamed_addr constant [16 x i8] c"intel_cbphy_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 518, i32 29 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 568, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 580, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 260, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 266, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 280, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 286, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 221, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 233, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 164, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 187, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 309, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 316, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 395, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 397, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 532, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 538, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.294 = private constant [43 x i8] c"../drivers/phy/intel/phy-intel-lgm-combo.c\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 543, i32 3 }
@llvm.compiler.used = appending global [102 x ptr] [ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_intel_cbphy_driver_exit, ptr @__initcall__kmod_phy_intel_lgm_combo__310_631_intel_cbphy_driver_init6, ptr @intel_cbphy_calibrate._entry, ptr @intel_cbphy_calibrate._entry_ptr, ptr @intel_cbphy_create._entry, ptr @intel_cbphy_create._entry.33, ptr @intel_cbphy_create._entry_ptr, ptr @intel_cbphy_create._entry_ptr.35, ptr @intel_cbphy_driver_exit, ptr @intel_cbphy_fwnode_parse._entry, ptr @intel_cbphy_fwnode_parse._entry.12, ptr @intel_cbphy_fwnode_parse._entry.16, ptr @intel_cbphy_fwnode_parse._entry.20, ptr @intel_cbphy_fwnode_parse._entry.27, ptr @intel_cbphy_fwnode_parse._entry.8, ptr @intel_cbphy_fwnode_parse._entry_ptr, ptr @intel_cbphy_fwnode_parse._entry_ptr.10, ptr @intel_cbphy_fwnode_parse._entry_ptr.14, ptr @intel_cbphy_fwnode_parse._entry_ptr.18, ptr @intel_cbphy_fwnode_parse._entry_ptr.22, ptr @intel_cbphy_fwnode_parse._entry_ptr.29, ptr @intel_cbphy_iphy_power_off._entry, ptr @intel_cbphy_iphy_power_off._entry.58, ptr @intel_cbphy_iphy_power_off._entry_ptr, ptr @intel_cbphy_iphy_power_off._entry_ptr.60, ptr @intel_cbphy_iphy_power_on._entry, ptr @intel_cbphy_iphy_power_on._entry.38, ptr @intel_cbphy_iphy_power_on._entry.41, ptr @intel_cbphy_iphy_power_on._entry.44, ptr @intel_cbphy_iphy_power_on._entry_ptr, ptr @intel_cbphy_iphy_power_on._entry_ptr.40, ptr @intel_cbphy_iphy_power_on._entry_ptr.43, ptr @intel_cbphy_iphy_power_on._entry_ptr.46, ptr @intel_cbphy_pcie_dis_pad_refclk._entry, ptr @intel_cbphy_pcie_dis_pad_refclk._entry_ptr, ptr @intel_cbphy_pcie_en_pad_refclk._entry, ptr @intel_cbphy_pcie_en_pad_refclk._entry_ptr, ptr @intel_cbphy_set_mode._entry, ptr @intel_cbphy_set_mode._entry.49, ptr @intel_cbphy_set_mode._entry_ptr, ptr @intel_cbphy_set_mode._entry_ptr.51, ptr @intel_cbphy_xlate._entry, ptr @intel_cbphy_xlate._entry.67, ptr @intel_cbphy_xlate._entry.70, ptr @intel_cbphy_xlate._entry_ptr, ptr @intel_cbphy_xlate._entry_ptr.69, ptr @intel_cbphy_xlate._entry_ptr.72, ptr @intel_cbphy_driver, ptr @.str, ptr @of_intel_cbphy_match, ptr @intel_cbphy_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @intel_iphy_clk_rates, ptr @.str.30, ptr @intel_cbphy_ops, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_intel_cbphy_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_fwnode_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_fwnode_parse._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_fwnode_parse._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_fwnode_parse._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_fwnode_parse._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_fwnode_parse._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_iphy_clk_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_create._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_iphy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_iphy_power_on._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_iphy_power_on._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_iphy_power_on._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_set_mode._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_pcie_en_pad_refclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_pcie_dis_pad_refclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_iphy_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_iphy_power_off._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_calibrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_xlate._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_cbphy_xlate._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_cbphy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @intel_cbphy_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @intel_cbphy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @intel_cbphy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_cbphy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ref.i = alloca %struct.fwnode_reference_args, align 8
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 180, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %init_cnt = getelementptr inbounds %struct.intel_combo_phy, ptr %call.i, i32 0, i32 14
  %1 = ptrtoint ptr %init_cnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %init_cnt, align 4
  %lock = getelementptr inbounds %struct.intel_combo_phy, ptr %call.i, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @intel_cbphy_probe.__key) #6
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -16
  %call.i19 = tail call ptr @dev_fwnode(ptr noundef %3) #6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ref.i) #6
  %4 = call ptr @memset(ptr %ref.i, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i, align 4, !annotation !152
  %call2.i = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #6
  %core_clk.i = getelementptr inbounds %struct.intel_combo_phy, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2.i, ptr %core_clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end8.i

if.then.i:                                        ; preds = %if.end
  %cmp.not.i = icmp eq ptr %call2.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge, label %do.end.i

if.then.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %intel_cbphy_fwnode_parse.exit.thread

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call2.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %7) #9
  br label %intel_cbphy_fwnode_parse.exit

if.end8.i:                                        ; preds = %if.end
  %call.i.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #6
  %core_rst.i = getelementptr inbounds %struct.intel_combo_phy, ptr %call.i, i32 0, i32 10
  %8 = ptrtoint ptr %core_rst.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i.i, ptr %core_rst.i, align 4
  %cmp.i214.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214.i, label %if.then12.i, label %if.end21.i

if.then12.i:                                      ; preds = %if.end8.i
  %cmp15.not.i = icmp eq ptr %call.i.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp15.not.i, label %if.then12.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge, label %do.end19.i

if.then12.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %intel_cbphy_fwnode_parse.exit.thread

do.end19.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call.i.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %9) #9
  br label %intel_cbphy_fwnode_parse.exit

if.end21.i:                                       ; preds = %if.end8.i
  %call.i.i215.i = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #6
  %phy_rst.i = getelementptr inbounds %struct.intel_combo_phy, ptr %call.i, i32 0, i32 9
  %10 = ptrtoint ptr %phy_rst.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i215.i, ptr %phy_rst.i, align 4
  %cmp.i216.i = icmp ugt ptr %call.i.i215.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i216.i, label %if.then25.i, label %if.end34.i

if.then25.i:                                      ; preds = %if.end21.i
  %cmp28.not.i = icmp eq ptr %call.i.i215.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp28.not.i, label %if.then25.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge, label %do.end32.i

if.then25.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %intel_cbphy_fwnode_parse.exit.thread

do.end32.i:                                       ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call.i.i215.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %11) #9
  br label %intel_cbphy_fwnode_parse.exit

if.end34.i:                                       ; preds = %if.end21.i
  %call.i.i217.i = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.15, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #6
  %app_rst.i = getelementptr inbounds %struct.intel_combo_phy, ptr %call.i, i32 0, i32 11, i32 0, i32 2
  %12 = ptrtoint ptr %app_rst.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i217.i, ptr %app_rst.i, align 4
  %cmp.i218.i = icmp ugt ptr %call.i.i217.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i218.i, label %if.then40.i, label %if.end51.i

if.then40.i:                                      ; preds = %if.end34.i
  %cmp45.not.i = icmp eq ptr %call.i.i217.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp45.not.i, label %if.then40.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge, label %do.end49.i

if.then40.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge: ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %intel_cbphy_fwnode_parse.exit.thread

do.end49.i:                                       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call.i.i217.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %13) #9
  br label %intel_cbphy_fwnode_parse.exit

if.end51.i:                                       ; preds = %if.end34.i
  %call.i.i219.i = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #6
  %app_rst55.i = getelementptr %struct.intel_combo_phy, ptr %call.i, i32 0, i32 11, i32 1, i32 2
  %14 = ptrtoint ptr %app_rst55.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i219.i, ptr %app_rst55.i, align 4
  %cmp.i220.i = icmp ugt ptr %call.i.i219.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220.i, label %if.then60.i, label %if.end71.i

if.then60.i:                                      ; preds = %if.end51.i
  %cmp65.not.i = icmp eq ptr %call.i.i219.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp65.not.i, label %if.then60.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge, label %do.end69.i

if.then60.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge: ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %intel_cbphy_fwnode_parse.exit.thread

do.end69.i:                                       ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call.i.i219.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %15) #9
  br label %intel_cbphy_fwnode_parse.exit

if.end71.i:                                       ; preds = %if.end51.i
  %call72.i = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.23) #6
  %app_base.i = getelementptr inbounds %struct.intel_combo_phy, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %app_base.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call72.i, ptr %app_base.i, align 4
  %cmp.i221.i = icmp ugt ptr %call72.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i221.i, label %if.then75.i, label %if.end78.i

if.then75.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call72.i to i32
  br label %intel_cbphy_fwnode_parse.exit

if.end78.i:                                       ; preds = %if.end71.i
  %call79.i = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.7) #6
  %cr_base.i = getelementptr inbounds %struct.intel_combo_phy, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %cr_base.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call79.i, ptr %cr_base.i, align 4
  %cmp.i222.i = icmp ugt ptr %call79.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222.i, label %if.then82.i, label %if.end85.i

if.then82.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call79.i to i32
  br label %intel_cbphy_fwnode_parse.exit

if.end85.i:                                       ; preds = %if.end78.i
  %call86.i = call i32 @fwnode_property_get_reference_args(ptr noundef %call.i19, ptr noundef nonnull @.str.24, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %ref.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %cmp87.i = icmp slt i32 %call86.i, 0
  br i1 %cmp87.i, label %if.end85.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge, label %if.end89.i

if.end85.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge: ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %intel_cbphy_fwnode_parse.exit.thread

if.end89.i:                                       ; preds = %if.end85.i
  %args.i = getelementptr inbounds %struct.fwnode_reference_args, ptr %ref.i, i32 0, i32 2
  %20 = ptrtoint ptr %args.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %args.i, align 8
  %conv.i = trunc i64 %21 to i32
  %id.i = getelementptr inbounds %struct.intel_combo_phy, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv.i, ptr %id.i, align 4
  %23 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ref.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %24, null
  %cmp.i.i.i = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.end89.i.is_of_node.exit.thread.i_crit_edge, label %is_of_node.exit.i

if.end89.i.is_of_node.exit.thread.i_crit_edge:    ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %is_of_node.exit.thread.i

is_of_node.exit.i:                                ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #8
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i.i, align 4
  %cmp.i223.i = icmp eq ptr %26, @of_fwnode_ops
  %add.ptr97.i = getelementptr i8, ptr %24, i32 -12
  %spec.select.i = select i1 %cmp.i223.i, ptr %add.ptr97.i, ptr null
  br label %is_of_node.exit.thread.i

is_of_node.exit.thread.i:                         ; preds = %is_of_node.exit.i, %if.end89.i.is_of_node.exit.thread.i_crit_edge
  %27 = phi ptr [ null, %if.end89.i.is_of_node.exit.thread.i_crit_edge ], [ %spec.select.i, %is_of_node.exit.i ]
  %call98.i = call ptr @device_node_to_regmap(ptr noundef %27) #6
  %syscfg.i = getelementptr inbounds %struct.intel_combo_phy, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %syscfg.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call98.i, ptr %syscfg.i, align 4
  %29 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ref.i, align 8
  call void @fwnode_handle_put(ptr noundef %30) #6
  %call100.i = call i32 @fwnode_property_get_reference_args(ptr noundef %call.i19, ptr noundef nonnull @.str.25, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %ref.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %cmp101.i = icmp slt i32 %call100.i, 0
  br i1 %cmp101.i, label %is_of_node.exit.thread.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge, label %if.end104.i

is_of_node.exit.thread.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge: ; preds = %is_of_node.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %intel_cbphy_fwnode_parse.exit.thread

if.end104.i:                                      ; preds = %is_of_node.exit.thread.i
  %31 = ptrtoint ptr %args.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %args.i, align 8
  %conv107.i = trunc i64 %32 to i32
  %bid.i = getelementptr inbounds %struct.intel_combo_phy, ptr %call.i, i32 0, i32 8
  %33 = ptrtoint ptr %bid.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv107.i, ptr %bid.i, align 4
  %34 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ref.i, align 8
  %tobool.not.i.i224.i = icmp eq ptr %35, null
  %cmp.i.i225.i = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i226.i = or i1 %tobool.not.i.i224.i, %cmp.i.i225.i
  br i1 %spec.select.i.i226.i, label %if.end104.i.is_of_node.exit230.thread.i_crit_edge, label %is_of_node.exit230.i

if.end104.i.is_of_node.exit230.thread.i_crit_edge: ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %is_of_node.exit230.thread.i

is_of_node.exit230.i:                             ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #8
  %ops.i227.i = getelementptr inbounds %struct.fwnode_handle, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %ops.i227.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i227.i, align 4
  %cmp.i228.i = icmp eq ptr %37, @of_fwnode_ops
  %add.ptr116.i = getelementptr i8, ptr %35, i32 -12
  %spec.select233.i = select i1 %cmp.i228.i, ptr %add.ptr116.i, ptr null
  br label %is_of_node.exit230.thread.i

is_of_node.exit230.thread.i:                      ; preds = %is_of_node.exit230.i, %if.end104.i.is_of_node.exit230.thread.i_crit_edge
  %38 = phi ptr [ null, %if.end104.i.is_of_node.exit230.thread.i_crit_edge ], [ %spec.select233.i, %is_of_node.exit230.i ]
  %call120.i = call ptr @device_node_to_regmap(ptr noundef %38) #6
  %hsiocfg.i = getelementptr inbounds %struct.intel_combo_phy, ptr %call.i, i32 0, i32 6
  %39 = ptrtoint ptr %hsiocfg.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call120.i, ptr %hsiocfg.i, align 4
  %40 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ref.i, align 8
  call void @fwnode_handle_put(ptr noundef %41) #6
  %call122.i = call i32 @fwnode_property_read_u32_array(ptr noundef %call.i19, ptr noundef nonnull @.str.26, ptr noundef nonnull %val.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %tobool.not.i = icmp eq i32 %call122.i, 0
  br i1 %tobool.not.i, label %if.end124.i, label %is_of_node.exit230.thread.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge

is_of_node.exit230.thread.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge: ; preds = %is_of_node.exit230.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %intel_cbphy_fwnode_parse.exit.thread

if.end124.i:                                      ; preds = %is_of_node.exit230.thread.i
  %42 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val.i, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %43, label %do.end131.i [
    i32 2, label %if.end124.i.sw.epilog.i_crit_edge
    i32 1, label %sw.bb125.i
    i32 7, label %sw.bb127.i
  ]

if.end124.i.sw.epilog.i_crit_edge:                ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb125.i:                                       ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb127.i:                                       ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.end131.i:                                      ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.28, i32 noundef %43) #9
  br label %intel_cbphy_fwnode_parse.exit.thread

sw.epilog.i:                                      ; preds = %sw.bb127.i, %sw.bb125.i, %if.end124.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 1, %sw.bb127.i ], [ 2, %sw.bb125.i ], [ 0, %if.end124.i.sw.epilog.i_crit_edge ]
  %phy_mode128.i = getelementptr inbounds %struct.intel_combo_phy, ptr %call.i, i32 0, i32 12
  %45 = ptrtoint ptr %phy_mode128.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink.i, ptr %phy_mode128.i, align 4
  %arrayidx133.i = getelementptr [3 x i32], ptr @intel_iphy_clk_rates, i32 0, i32 %.sink.i
  %46 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx133.i, align 4
  %clk_rate.i = getelementptr inbounds %struct.intel_combo_phy, ptr %call.i, i32 0, i32 2
  %48 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %clk_rate.i, align 4
  %call134.i = call zeroext i1 @fwnode_property_present(ptr noundef %call.i19, ptr noundef nonnull @.str.30) #6
  %aggr_mode.i = getelementptr inbounds %struct.intel_combo_phy, ptr %call.i, i32 0, i32 13
  %. = zext i1 %call134.i to i32
  %49 = ptrtoint ptr %aggr_mode.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %., ptr %aggr_mode.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ref.i) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %50 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  %arrayidx.i = getelementptr %struct.intel_combo_phy, ptr %call.i, i32 0, i32 11, i32 0
  %parent.i = getelementptr %struct.intel_combo_phy, ptr %call.i, i32 0, i32 11, i32 0, i32 1
  %53 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %parent.i, align 4
  %id.i20 = getelementptr %struct.intel_combo_phy, ptr %call.i, i32 0, i32 11, i32 0, i32 3
  %54 = ptrtoint ptr %id.i20 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %id.i20, align 4
  %call.i21 = call ptr @devm_phy_create(ptr noundef %52, ptr noundef null, ptr noundef nonnull @intel_cbphy_ops) #6
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i21, ptr %arrayidx.i, align 4
  %cmp.i.i22 = icmp ugt ptr %call.i21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i22, label %sw.epilog.i.do.end.i23_crit_edge, label %for.inc.i

sw.epilog.i.do.end.i23_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i23

intel_cbphy_fwnode_parse.exit.thread:             ; preds = %do.end131.i, %is_of_node.exit230.thread.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge, %is_of_node.exit.thread.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge, %if.end85.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge, %if.then60.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge, %if.then40.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge, %if.then25.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge, %if.then12.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge, %if.then.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call122.i, %is_of_node.exit230.thread.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge ], [ %call100.i, %is_of_node.exit.thread.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge ], [ %call86.i, %if.end85.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge ], [ -517, %if.then60.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge ], [ -517, %if.then40.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge ], [ -517, %if.then25.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge ], [ -517, %if.then12.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge ], [ -517, %if.then.i.intel_cbphy_fwnode_parse.exit.thread_crit_edge ], [ -22, %do.end131.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ref.i) #6
  br label %cleanup

intel_cbphy_fwnode_parse.exit:                    ; preds = %if.then82.i, %if.then75.i, %do.end69.i, %do.end49.i, %do.end32.i, %do.end19.i, %do.end.i
  %retval.0.i = phi i32 [ %17, %if.then75.i ], [ %19, %if.then82.i ], [ %7, %do.end.i ], [ %9, %do.end19.i ], [ %11, %do.end32.i ], [ %13, %do.end49.i ], [ %15, %do.end69.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ref.i) #6
  br label %cleanup

do.end.i23:                                       ; preds = %if.end.1.i.do.end.i23_crit_edge, %sw.epilog.i.do.end.i23_crit_edge
  %arrayidx.lcssa.i = phi ptr [ %arrayidx.i, %sw.epilog.i.do.end.i23_crit_edge ], [ %arrayidx.1.i, %if.end.1.i.do.end.i23_crit_edge ]
  %parent.lcssa.i = phi ptr [ %parent.i, %sw.epilog.i.do.end.i23_crit_edge ], [ %parent.1.i, %if.end.1.i.do.end.i23_crit_edge ]
  %id.lcssa.i = phi ptr [ %id.i20, %sw.epilog.i.do.end.i23_crit_edge ], [ %id.1.i, %if.end.1.i.do.end.i23_crit_edge ]
  %56 = ptrtoint ptr %parent.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parent.lcssa.i, align 4
  %id10.i = getelementptr inbounds %struct.intel_combo_phy, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %id10.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id10.i, align 4
  %60 = ptrtoint ptr %id.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %id.lcssa.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.31, i32 noundef %59, i32 noundef %61) #9
  %62 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.lcssa.i, align 4
  %64 = ptrtoint ptr %63 to i32
  br label %cleanup

for.inc.i:                                        ; preds = %sw.epilog.i
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %call.i21, i32 0, i32 8
  %65 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %arrayidx.i, ptr %driver_data.i.i.i, align 4
  %arrayidx.1.i = getelementptr %struct.intel_combo_phy, ptr %call.i, i32 0, i32 11, i32 1
  %parent.1.i = getelementptr %struct.intel_combo_phy, ptr %call.i, i32 0, i32 11, i32 1, i32 1
  %66 = ptrtoint ptr %parent.1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i, ptr %parent.1.i, align 4
  %id.1.i = getelementptr %struct.intel_combo_phy, ptr %call.i, i32 0, i32 11, i32 1, i32 3
  %67 = ptrtoint ptr %id.1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %id.1.i, align 4
  %68 = ptrtoint ptr %aggr_mode.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %aggr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp3.1.i = icmp eq i32 %69, 1
  br i1 %cmp3.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %call.1.i = call ptr @devm_phy_create(ptr noundef %52, ptr noundef null, ptr noundef nonnull @intel_cbphy_ops) #6
  %70 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.1.i, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %if.end.1.i.do.end.i23_crit_edge, label %if.end14.1.i

if.end.1.i.do.end.i23_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i23

if.end14.1.i:                                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i.1.i = getelementptr inbounds %struct.device, ptr %call.1.i, i32 0, i32 8
  %71 = ptrtoint ptr %driver_data.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %arrayidx.1.i, ptr %driver_data.i.i.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end14.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %driver_data.i.i25 = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 8
  %72 = ptrtoint ptr %driver_data.i.i25 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i, ptr %driver_data.i.i25, align 4
  %call16.i = call ptr @__devm_of_phy_provider_register(ptr noundef %52, ptr noundef null, ptr noundef null, ptr noundef nonnull @intel_cbphy_xlate) #6
  %cmp.i48.i = icmp ugt ptr %call16.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48.i, label %do.end21.i, label %for.inc.1.i.if.end22.i_crit_edge

for.inc.1.i.if.end22.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

do.end21.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.34) #9
  br label %if.end22.i

if.end22.i:                                       ; preds = %do.end21.i, %for.inc.1.i.if.end22.i_crit_edge
  %73 = ptrtoint ptr %call16.i to i32
  %spec.select.i.i = select i1 %cmp.i48.i, i32 %73, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end22.i, %do.end.i23, %intel_cbphy_fwnode_parse.exit, %intel_cbphy_fwnode_parse.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %intel_cbphy_fwnode_parse.exit ], [ %retval.0.i.ph, %intel_cbphy_fwnode_parse.exit.thread ], [ %64, %do.end.i23 ], [ %spec.select.i.i, %if.end22.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_cbphy_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core_rst.i = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %core_rst.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core_rst.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %3) #6
  %phy_rst.i = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %phy_rst.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_rst.i, align 4
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %5) #6
  %core_clk = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_get_reference_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @intel_cbphy_xlate(ptr noundef %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %args2 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %args2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp3 = icmp ugt i32 %5, 1
  br i1 %cmp3, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68, i32 noundef %5) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %aggr_mode = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %aggr_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aggr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp10 = icmp eq i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp11 = icmp eq i32 %5, 1
  %or.cond = select i1 %cmp10, i1 %cmp11, i1 false
  br i1 %or.cond, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef 1) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx18 = getelementptr %struct.intel_combo_phy, ptr %1, i32 0, i32 11, i32 %5
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end15, %do.end7, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end7 ], [ inttoptr (i32 -22 to ptr), %do.end15 ], [ %9, %if.end17 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_cbphy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.intel_cbphy_iphy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %lock = getelementptr inbounds %struct.intel_combo_phy, ptr %3, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %call.i = tail call fastcc i32 @intel_cbphy_iphy_power_on(ptr noundef %1) #6, !callees !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end.i:                                         ; preds = %entry
  %aggr_mode.i = getelementptr inbounds %struct.intel_combo_phy, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %aggr_mode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aggr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 1
  br i1 %cmp.not.i, label %intel_cbphy_iphy_cfg.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

intel_cbphy_iphy_cfg.exit:                        ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.intel_combo_phy, ptr %5, i32 0, i32 11, i32 1
  %call4.i = tail call fastcc i32 @intel_cbphy_iphy_power_on(ptr noundef %arrayidx.i) #6, !callees !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %intel_cbphy_iphy_cfg.exit.if.end_crit_edge, label %intel_cbphy_iphy_cfg.exit.err_crit_edge

intel_cbphy_iphy_cfg.exit.err_crit_edge:          ; preds = %intel_cbphy_iphy_cfg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

intel_cbphy_iphy_cfg.exit.if.end_crit_edge:       ; preds = %intel_cbphy_iphy_cfg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %intel_cbphy_iphy_cfg.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %phy_mode = getelementptr inbounds %struct.intel_combo_phy, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 4
  %call.i17 = tail call fastcc i32 @intel_cbphy_pcie_en_pad_refclk(ptr noundef %1) #6, !callees !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool.not.i18 = icmp eq i32 %call.i17, 0
  br i1 %tobool.not.i18, label %if.end.i21, label %if.then2.err_crit_edge

if.then2.err_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end.i21:                                       ; preds = %if.then2
  %aggr_mode.i19 = getelementptr inbounds %struct.intel_combo_phy, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %aggr_mode.i19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %aggr_mode.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.not.i20 = icmp eq i32 %13, 1
  br i1 %cmp.not.i20, label %intel_cbphy_iphy_cfg.exit26, label %if.end.i21.if.end7_crit_edge

if.end.i21.if.end7_crit_edge:                     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

intel_cbphy_iphy_cfg.exit26:                      ; preds = %if.end.i21
  %arrayidx.i22 = getelementptr %struct.intel_combo_phy, ptr %11, i32 0, i32 11, i32 1
  %call4.i23 = tail call fastcc i32 @intel_cbphy_pcie_en_pad_refclk(ptr noundef %arrayidx.i22) #6, !callees !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i23)
  %tobool4.not = icmp eq i32 %call4.i23, 0
  br i1 %tobool4.not, label %intel_cbphy_iphy_cfg.exit26.if.end7_crit_edge, label %intel_cbphy_iphy_cfg.exit26.err_crit_edge

intel_cbphy_iphy_cfg.exit26.err_crit_edge:        ; preds = %intel_cbphy_iphy_cfg.exit26
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

intel_cbphy_iphy_cfg.exit26.if.end7_crit_edge:    ; preds = %intel_cbphy_iphy_cfg.exit26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7:                                          ; preds = %intel_cbphy_iphy_cfg.exit26.if.end7_crit_edge, %if.end.i21.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %init_cnt = getelementptr inbounds %struct.intel_combo_phy, ptr %3, i32 0, i32 14
  %14 = ptrtoint ptr %init_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %init_cnt, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %init_cnt, align 4
  br label %err

err:                                              ; preds = %if.end7, %intel_cbphy_iphy_cfg.exit26.err_crit_edge, %if.then2.err_crit_edge, %intel_cbphy_iphy_cfg.exit.err_crit_edge, %entry.err_crit_edge
  %ret.1 = phi i32 [ %call4.i, %intel_cbphy_iphy_cfg.exit.err_crit_edge ], [ %call4.i23, %intel_cbphy_iphy_cfg.exit26.err_crit_edge ], [ 0, %if.end7 ], [ %call.i, %entry.err_crit_edge ], [ %call.i17, %if.then2.err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_cbphy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.intel_cbphy_iphy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %lock = getelementptr inbounds %struct.intel_combo_phy, ptr %3, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %init_cnt = getelementptr inbounds %struct.intel_combo_phy, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %init_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %init_cnt, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %init_cnt, align 4
  %phy_mode = getelementptr inbounds %struct.intel_combo_phy, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 4
  %id.i.i27 = getelementptr inbounds %struct.intel_combo_phy, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %id.i.i27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i.i27, align 4
  %mul.i.i28 = shl i32 %11, 1
  %id1.i.i29 = getelementptr inbounds %struct.intel_cbphy_iphy, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %id1.i.i29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id1.i.i29, align 4
  %add.i.i30 = add i32 %mul.i.i28, %13
  %shl.i.i31 = shl nuw i32 1, %add.i.i30
  %syscfg.i.i32 = getelementptr inbounds %struct.intel_combo_phy, ptr %9, i32 0, i32 5
  %14 = ptrtoint ptr %syscfg.i.i32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %syscfg.i.i32, align 4
  %call.i.i.i33 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 372, i32 noundef %shl.i.i31, i32 noundef %shl.i.i31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i33)
  %tobool.not.i34 = icmp eq i32 %call.i.i.i33, 0
  br i1 %tobool.not.i34, label %if.end.i38, label %intel_cbphy_pcie_dis_pad_refclk.exit41

if.end.i38:                                       ; preds = %if.then
  %init_cnt.i36 = getelementptr inbounds %struct.intel_combo_phy, ptr %9, i32 0, i32 14
  %16 = ptrtoint ptr %init_cnt.i36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %init_cnt.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool1.not.i37 = icmp eq i32 %17, 0
  br i1 %tobool1.not.i37, label %if.end3.i40, label %if.end.i38.if.end.i_crit_edge

if.end.i38.if.end.i_crit_edge:                    ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end3.i40:                                      ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #8
  %app_base.i39 = getelementptr inbounds %struct.intel_combo_phy, ptr %9, i32 0, i32 3
  %18 = ptrtoint ptr %app_base.i39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %app_base.i39, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  %21 = or i32 %20, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %21) #6, !srcloc !157
  br label %if.end.i

intel_cbphy_pcie_dis_pad_refclk.exit41:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.54) #9
  br label %err

if.end.i:                                         ; preds = %if.end3.i40, %if.end.i38.if.end.i_crit_edge
  %aggr_mode.i = getelementptr inbounds %struct.intel_combo_phy, ptr %9, i32 0, i32 13
  %24 = ptrtoint ptr %aggr_mode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %aggr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.not.i = icmp eq i32 %25, 1
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.if.end3_crit_edge

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end2.i:                                        ; preds = %if.end.i
  %parent.i23 = getelementptr %struct.intel_combo_phy, ptr %9, i32 0, i32 11, i32 1, i32 1
  %26 = ptrtoint ptr %parent.i23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i23, align 4
  %id.i.i = getelementptr inbounds %struct.intel_combo_phy, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.i.i, align 4
  %mul.i.i = shl i32 %29, 1
  %id1.i.i = getelementptr %struct.intel_combo_phy, ptr %9, i32 0, i32 11, i32 1, i32 3
  %30 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id1.i.i, align 4
  %add.i.i = add i32 %mul.i.i, %31
  %shl.i.i = shl nuw i32 1, %add.i.i
  %syscfg.i.i = getelementptr inbounds %struct.intel_combo_phy, ptr %27, i32 0, i32 5
  %32 = ptrtoint ptr %syscfg.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %syscfg.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 372, i32 noundef %shl.i.i, i32 noundef %shl.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i24 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i24, label %if.end.i25, label %do.end.i

do.end.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.54) #9
  br label %err

if.end.i25:                                       ; preds = %if.end2.i
  %init_cnt.i = getelementptr inbounds %struct.intel_combo_phy, ptr %27, i32 0, i32 14
  %36 = ptrtoint ptr %init_cnt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %init_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool1.not.i = icmp eq i32 %37, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i25.if.end3_crit_edge

if.end.i25.if.end3_crit_edge:                     ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end3.i:                                        ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #8
  %app_base.i = getelementptr inbounds %struct.intel_combo_phy, ptr %27, i32 0, i32 3
  %38 = ptrtoint ptr %app_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %app_base.i, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  %41 = or i32 %40, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %41) #6, !srcloc !157
  br label %if.end3

if.end3:                                          ; preds = %if.end3.i, %if.end.i25.if.end3_crit_edge, %if.end.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  %42 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parent, align 4
  %call.i13 = tail call fastcc i32 @intel_cbphy_iphy_power_off(ptr noundef %1) #6, !callees !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool.not.i14 = icmp eq i32 %call.i13, 0
  br i1 %tobool.not.i14, label %if.end.i17, label %if.end3.err_crit_edge

if.end3.err_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end.i17:                                       ; preds = %if.end3
  %aggr_mode.i15 = getelementptr inbounds %struct.intel_combo_phy, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %aggr_mode.i15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %aggr_mode.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp.not.i16 = icmp eq i32 %45, 1
  br i1 %cmp.not.i16, label %if.end2.i20, label %if.end.i17.err_crit_edge

if.end.i17.err_crit_edge:                         ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end2.i20:                                      ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i18 = getelementptr %struct.intel_combo_phy, ptr %43, i32 0, i32 11, i32 1
  %call4.i19 = tail call fastcc i32 @intel_cbphy_iphy_power_off(ptr noundef %arrayidx.i18) #6, !callees !153
  br label %err

err:                                              ; preds = %if.end2.i20, %if.end.i17.err_crit_edge, %if.end3.err_crit_edge, %do.end.i, %intel_cbphy_pcie_dis_pad_refclk.exit41
  %ret.0 = phi i32 [ %call.i.i.i33, %intel_cbphy_pcie_dis_pad_refclk.exit41 ], [ %call.i.i.i, %do.end.i ], [ %call4.i19, %if.end2.i20 ], [ %call.i13, %if.end3.err_crit_edge ], [ 0, %if.end.i17.err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_cbphy_calibrate(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.intel_cbphy_iphy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %phy_mode = getelementptr inbounds %struct.intel_combo_phy, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cr_base1 = getelementptr inbounds %struct.intel_combo_phy, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %cr_base1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cr_base1, align 4
  %id2 = getelementptr inbounds %struct.intel_cbphy_iphy, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id2, align 4
  %mul = shl i32 %9, 10
  %shl = add i32 %mul, 49184
  %add.ptr.i = getelementptr i8, ptr %7, i32 %shl
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  %11 = or i32 %10, 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #6, !srcloc !157
  %call15 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call15, 5000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 393) #6
  %shl31 = add i32 %mul, 49216
  %add.ptr = getelementptr i8, ptr %7, i32 %shl31
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !154
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  %and122 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool.not123 = icmp eq i32 %and122, 0
  br i1 %tobool.not123, label %if.end.land.lhs.true_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then53.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call38 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call38, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call38, %add.i
  br i1 %cmp3.i, label %if.then41, label %if.then53

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !154
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !159
  br label %for.end

if.then53:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !154
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  %and = and i32 %17, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then53.land.lhs.true_crit_edge, label %if.then53.for.end_crit_edge

if.then53.for.end_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then53.land.lhs.true_crit_edge:                ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

for.end:                                          ; preds = %if.then53.for.end_crit_edge, %if.then41, %if.end.for.end_crit_edge
  %val.0 = phi i32 [ %15, %if.then41 ], [ %13, %if.end.for.end_crit_edge ], [ %17, %if.then53.for.end_crit_edge ]
  %and57 = and i32 %val.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %cond = select i1 %tobool58.not, i32 -110, i32 0
  br i1 %tobool58.not, label %do.end63, label %do.body64

do.end63:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.61) #9
  br label %if.end75

do.body64:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_cbphy_calibrate.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intel_cbphy_calibrate, %if.then70)) #6
          to label %if.end75 [label %if.then70], !srcloc !160

if.then70:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @intel_cbphy_calibrate.__UNIQUE_ID_ddebug304, ptr noundef %21, ptr noundef nonnull @.str.64) #6
  br label %if.end75

if.end75:                                         ; preds = %if.then70, %do.body64, %do.end63
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  %23 = and i32 %22, -805306369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #6, !srcloc !157
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end75 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @intel_cbphy_iphy_power_on(ptr nocapture noundef readonly %iphy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.intel_cbphy_iphy, ptr %iphy, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %init_cnt = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %init_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %init_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then:                                          ; preds = %entry
  %core_clk = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.do.end_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.36) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %8 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core_clk, align 4
  %clk_rate = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_rate, align 4
  %call4 = tail call i32 @clk_set_rate(ptr noundef %9, i32 noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clk_rate, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.39, i32 noundef %15) #9
  br label %clk_err

if.end12:                                         ; preds = %if.end
  %core_rst.i = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %core_rst.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core_rst.i, align 4
  %call.i60 = tail call i32 @reset_control_assert(ptr noundef %17) #6
  %phy_rst.i = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %phy_rst.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_rst.i, align 4
  %call1.i61 = tail call i32 @reset_control_assert(ptr noundef %19) #6
  %20 = ptrtoint ptr %core_rst.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core_rst.i, align 4
  %call.i63 = tail call i32 @reset_control_deassert(ptr noundef %21) #6
  %22 = ptrtoint ptr %phy_rst.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_rst.i, align 4
  %call1.i65 = tail call i32 @reset_control_deassert(ptr noundef %23) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %aggr_mode.i = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 13
  %24 = ptrtoint ptr %aggr_mode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %aggr_mode.i, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %phy_mode.i = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 12
  %28 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %phy_mode.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %29, label %if.end12.clk_err_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb5.i
  ]

if.end12.clk_err_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_err

sw.bb.i:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i = icmp eq i32 %25, 1
  %cond.i = zext i1 %cmp.i to i32
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp3.i = icmp eq i32 %25, 1
  %cond4.i = select i1 %cmp3.i, i32 2, i32 3
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp6.i = icmp eq i32 %25, 1
  br i1 %cmp6.i, label %do.end.i, label %sw.bb5.i.sw.epilog.i_crit_edge

sw.bb5.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.end.i:                                         ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.47, i32 noundef 2) #9
  br label %clk_err

sw.epilog.i:                                      ; preds = %sw.bb5.i.sw.epilog.i_crit_edge, %sw.bb2.i, %sw.bb.i
  %cb_mode.0.i = phi i32 [ %cond4.i, %sw.bb2.i ], [ %cond.i, %sw.bb.i ], [ 4, %sw.bb5.i.sw.epilog.i_crit_edge ]
  %hsiocfg.i = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %hsiocfg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hsiocfg.i, align 4
  %bid.i = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %bid.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bid.i, align 4
  %mul.i = shl i32 %34, 9
  %call.i66 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef %mul.i, i32 noundef %cb_mode.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i67 = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i67, label %sw.epilog.i.if.end17_crit_edge, label %do.end10.i

sw.epilog.i.if.end17_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end10.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.50, i32 noundef %call.i66) #9
  br label %clk_err

if.end17:                                         ; preds = %sw.epilog.i.if.end17_crit_edge, %entry.if.end17_crit_edge
  %35 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent, align 4
  %phy_mode.i69 = getelementptr inbounds %struct.intel_combo_phy, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %phy_mode.i69 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %phy_mode.i69, align 4
  %mul.i70 = shl i32 %38, 1
  %id.i = getelementptr inbounds %struct.intel_cbphy_iphy, ptr %iphy, i32 0, i32 3
  %39 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id.i, align 4
  %add.i = add i32 %mul.i70, %40
  %shl.i = shl nuw i32 1, %add.i
  %hsiocfg.i71 = getelementptr inbounds %struct.intel_combo_phy, ptr %36, i32 0, i32 6
  %41 = ptrtoint ptr %hsiocfg.i71 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hsiocfg.i71, align 4
  %bid.i72 = getelementptr inbounds %struct.intel_combo_phy, ptr %36, i32 0, i32 8
  %43 = ptrtoint ptr %bid.i72 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bid.i72, align 4
  %mul1.i = shl i32 %44, 9
  %add2.i = or i32 %mul1.i, 292
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef %add2.i, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool19.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.42) #9
  br label %clk_err

if.end25:                                         ; preds = %if.end17
  %app_rst = getelementptr inbounds %struct.intel_cbphy_iphy, ptr %iphy, i32 0, i32 2
  %47 = ptrtoint ptr %app_rst to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %app_rst, align 4
  %call26 = tail call i32 @reset_control_deassert(ptr noundef %48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end35, label %do.end31

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %51 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %parent, align 4
  %id = getelementptr inbounds %struct.intel_combo_phy, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %id, align 4
  %55 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.45, i32 noundef %54, i32 noundef %56) #9
  br label %clk_err

if.end35:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748) #6
  br label %cleanup

clk_err:                                          ; preds = %do.end31, %do.end23, %do.end10.i, %do.end.i, %if.end12.clk_err_crit_edge, %do.end9
  %ret.0 = phi i32 [ %call.i.i, %do.end23 ], [ %call26, %do.end31 ], [ %call4, %do.end9 ], [ %call.i66, %do.end10.i ], [ -22, %if.end12.clk_err_crit_edge ], [ -22, %do.end.i ]
  %core_clk36 = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %core_clk36 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %core_clk36, align 4
  tail call void @clk_disable(ptr noundef %59) #6
  tail call void @clk_unprepare(ptr noundef %59) #6
  br label %cleanup

cleanup:                                          ; preds = %clk_err, %if.end35, %do.end
  %retval.0 = phi i32 [ %ret.0, %clk_err ], [ 0, %if.end35 ], [ %retval.0.i.ph, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @intel_cbphy_pcie_en_pad_refclk(ptr nocapture noundef readonly %iphy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.intel_cbphy_iphy, ptr %iphy, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %id.i = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %3, 1
  %id1.i = getelementptr inbounds %struct.intel_cbphy_iphy, ptr %iphy, i32 0, i32 3
  %4 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1.i, align 4
  %add.i = add i32 %mul.i, %5
  %shl.i = shl nuw i32 1, %add.i
  %syscfg.i = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %syscfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %syscfg.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 372, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.52) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_cnt = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %init_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %init_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not = icmp eq i32 %11, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %app_base = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %app_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %app_base, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  %15 = and i32 %14, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %15) #6, !srcloc !157
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %do.end
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @intel_cbphy_iphy_power_off(ptr nocapture noundef readonly %iphy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.intel_cbphy_iphy, ptr %iphy, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %app_rst = getelementptr inbounds %struct.intel_cbphy_iphy, ptr %iphy, i32 0, i32 2
  %2 = ptrtoint ptr %app_rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %app_rst, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  %id = getelementptr inbounds %struct.intel_combo_phy, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %id2 = getelementptr inbounds %struct.intel_cbphy_iphy, ptr %iphy, i32 0, i32 3
  %10 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.56, i32 noundef %9, i32 noundef %11) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 4
  %phy_mode.i = getelementptr inbounds %struct.intel_combo_phy, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phy_mode.i, align 4
  %mul.i = shl i32 %15, 1
  %id.i = getelementptr inbounds %struct.intel_cbphy_iphy, ptr %iphy, i32 0, i32 3
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i, align 4
  %add.i = add i32 %mul.i, %17
  %shl.i = shl nuw i32 1, %add.i
  %hsiocfg.i = getelementptr inbounds %struct.intel_combo_phy, ptr %13, i32 0, i32 6
  %18 = ptrtoint ptr %hsiocfg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hsiocfg.i, align 4
  %bid.i = getelementptr inbounds %struct.intel_combo_phy, ptr %13, i32 0, i32 8
  %20 = ptrtoint ptr %bid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bid.i, align 4
  %mul1.i = shl i32 %21, 9
  %add2.i = or i32 %mul1.i, 292
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %add2.i, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.59) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %init_cnt = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 14
  %24 = ptrtoint ptr %init_cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %init_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool11.not = icmp eq i32 %25, 0
  br i1 %tobool11.not, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %core_clk = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %27) #6
  tail call void @clk_unprepare(ptr noundef %27) #6
  %core_rst.i = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 10
  %28 = ptrtoint ptr %core_rst.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core_rst.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %29) #6
  %phy_rst.i = getelementptr inbounds %struct.intel_combo_phy, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %phy_rst.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy_rst.i, align 4
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %31) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end10.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call.i.i, %do.end8 ], [ 0, %if.end13 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !28, !29, !31, !33, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !51, !53, !55, !57, !58, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @__initcall__kmod_phy_intel_lgm_combo__310_631_intel_cbphy_driver_init6, !1, !"__initcall__kmod_phy_intel_lgm_combo__310_631_intel_cbphy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 631, i32 1}
!2 = !{ptr @__exitcall_intel_cbphy_driver_exit, !1, !"__exitcall_intel_cbphy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description311, !4, !"__UNIQUE_ID_description311", i1 false, i1 false}
!4 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 633, i32 1}
!5 = !{ptr @__UNIQUE_ID_file312, !6, !"__UNIQUE_ID_file312", i1 false, i1 false}
!6 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 634, i32 1}
!7 = !{ptr @__UNIQUE_ID_license313, !6, !"__UNIQUE_ID_license313", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 626, i32 11}
!10 = !{ptr @intel_cbphy_driver, !11, !"intel_cbphy_driver", i1 false, i1 false}
!11 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 622, i32 31}
!12 = !{ptr @intel_cbphy_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 597, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 419, i32 4}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @intel_cbphy_fwnode_parse._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @intel_cbphy_fwnode_parse._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 423, i32 57}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 427, i32 4}
!27 = !{ptr @intel_cbphy_fwnode_parse._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @intel_cbphy_fwnode_parse._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 431, i32 56}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 435, i32 4}
!33 = !{ptr @intel_cbphy_fwnode_parse._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @intel_cbphy_fwnode_parse._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 439, i32 64}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 443, i32 4}
!39 = !{ptr @intel_cbphy_fwnode_parse._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @intel_cbphy_fwnode_parse._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 447, i32 64}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 451, i32 4}
!45 = !{ptr @intel_cbphy_fwnode_parse._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @intel_cbphy_fwnode_parse._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 455, i32 64}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 468, i32 51}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 477, i32 51}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 486, i32 47}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 504, i32 3}
!57 = !{ptr @intel_cbphy_fwnode_parse._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @intel_cbphy_fwnode_parse._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 510, i32 38}
!61 = !{ptr @intel_iphy_clk_rates, !62, !"intel_iphy_clk_rates", i1 false, i1 false}
!62 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 43, i32 28}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 568, i32 4}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @intel_cbphy_create._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @intel_cbphy_create._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 580, i32 3}
!70 = !{ptr @intel_cbphy_create._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @intel_cbphy_create._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @intel_cbphy_ops, !73, !"intel_cbphy_ops", i1 false, i1 false}
!73 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 518, i32 29}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 260, i32 4}
!76 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @intel_cbphy_iphy_power_on._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @intel_cbphy_iphy_power_on._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 266, i32 4}
!81 = !{ptr @intel_cbphy_iphy_power_on._entry.38, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @intel_cbphy_iphy_power_on._entry_ptr.40, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 280, i32 3}
!85 = !{ptr @intel_cbphy_iphy_power_on._entry.41, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @intel_cbphy_iphy_power_on._entry_ptr.43, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 286, i32 3}
!89 = !{ptr @intel_cbphy_iphy_power_on._entry.44, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @intel_cbphy_iphy_power_on._entry_ptr.46, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 221, i32 4}
!93 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @intel_cbphy_set_mode._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @intel_cbphy_set_mode._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 233, i32 3}
!98 = !{ptr @intel_cbphy_set_mode._entry.49, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @intel_cbphy_set_mode._entry_ptr.51, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 164, i32 3}
!102 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @intel_cbphy_pcie_en_pad_refclk._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @intel_cbphy_pcie_en_pad_refclk._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 187, i32 3}
!107 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @intel_cbphy_pcie_dis_pad_refclk._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @intel_cbphy_pcie_dis_pad_refclk._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 309, i32 3}
!112 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @intel_cbphy_iphy_power_off._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @intel_cbphy_iphy_power_off._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 316, i32 3}
!117 = !{ptr @intel_cbphy_iphy_power_off._entry.58, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @intel_cbphy_iphy_power_off._entry_ptr.60, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 395, i32 3}
!121 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @intel_cbphy_calibrate._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @intel_cbphy_calibrate._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 397, i32 3}
!126 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @intel_cbphy_calibrate.__UNIQUE_ID_ddebug304, !125, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!128 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 532, i32 3}
!130 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @intel_cbphy_xlate._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @intel_cbphy_xlate._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 538, i32 3}
!135 = !{ptr @intel_cbphy_xlate._entry.67, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @intel_cbphy_xlate._entry_ptr.69, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.71, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 543, i32 3}
!139 = !{ptr @intel_cbphy_xlate._entry.70, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @intel_cbphy_xlate._entry_ptr.72, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @of_intel_cbphy_match, !142, !"of_intel_cbphy_match", i1 false, i1 false}
!142 = !{!"../drivers/phy/intel/phy-intel-lgm-combo.c", i32 616, i32 34}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{!"auto-init"}
!153 = distinct !{ptr @intel_cbphy_iphy_power_off, ptr @intel_cbphy_iphy_power_on, null, ptr @intel_cbphy_pcie_en_pad_refclk}
!154 = !{i64 3121697}
!155 = !{i64 2155210475}
!156 = !{i64 2155210686}
!157 = !{i64 3121279}
!158 = !{i64 2155302052}
!159 = !{i64 2155302654}
!160 = !{i64 2148765927, i64 2148765932, i64 2148765945, i64 2148765989, i64 2148766023, i64 2148766044}
