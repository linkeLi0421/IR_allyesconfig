; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/tegra/pinctrl-tegra-xusb.c_pt.bc'
source_filename = "../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tegra_xusb_padctl_legacy_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_xusb_padctl_legacy_probe\09\09\09\09"
module asm "\09.long\09__crc_tegra_xusb_padctl_legacy_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_xusb_padctl_legacy_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_xusb_padctl_legacy_probe\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_xusb_padctl_legacy_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tegra_xusb_padctl_legacy_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_xusb_padctl_legacy_remove\09\09\09\09"
module asm "\09.long\09__crc_tegra_xusb_padctl_legacy_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_xusb_padctl_legacy_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_xusb_padctl_legacy_remove\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_xusb_padctl_legacy_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tegra_xusb_padctl_soc = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.tegra_xusb_padctl_function = type { ptr, ptr, i32 }
%struct.tegra_xusb_padctl_lane = type { ptr, i32, i32, i32, i32, ptr, i32 }
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
%struct.tegra_xusb_padctl = type { ptr, ptr, %struct.mutex, ptr, ptr, ptr, %struct.pinctrl_desc, ptr, [2 x ptr], i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@tegra_xusb_padctl_legacy_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&padctl->lock\00", [18 x i8] zeroinitializer }, align 32
@tegra_xusb_padctl_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-xusb-padctl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_soc }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tegra124_pins = internal constant { [12 x %struct.pinctrl_pin_desc], [48 x i8] } { [12 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.22, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.23, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.24, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.28, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.29, ptr null }], [48 x i8] zeroinitializer }, align 32
@tegra_xusb_padctl_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @tegra_xusb_padctl_get_groups_count, ptr @tegra_xusb_padctl_get_group_name, ptr @tegra_xusb_padctl_get_group_pins, ptr null, ptr @tegra_xusb_padctl_dt_node_to_map, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@tegra_xusb_padctl_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @tegra_xusb_padctl_get_functions_count, ptr @tegra_xusb_padctl_get_function_name, ptr @tegra_xusb_padctl_get_function_groups, ptr @tegra_xusb_padctl_pinmux_set, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@tegra_xusb_padctl_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 0, ptr null, ptr null, ptr @tegra_xusb_padctl_pinconf_group_get, ptr @tegra_xusb_padctl_pinconf_group_set, ptr null, ptr @tegra_xusb_padctl_pinconf_group_dbg_show, ptr @tegra_xusb_padctl_pinconf_config_dbg_show }, [32 x i8] zeroinitializer }, align 32
@tegra_xusb_padctl_legacy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 920, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register pincontrol\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tegra_xusb_padctl_legacy_probe\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/pinctrl/tegra/pinctrl-tegra-xusb.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_xusb_padctl_legacy_probe._entry_ptr = internal global ptr @tegra_xusb_padctl_legacy_probe._entry, section ".printk_index", align 4
@pcie_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @tegra_xusb_phy_init, ptr @tegra_xusb_phy_exit, ptr @pcie_phy_power_on, ptr @pcie_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@sata_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @tegra_xusb_phy_init, ptr @tegra_xusb_phy_exit, ptr @sata_phy_power_on, ptr @sata_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@tegra_xusb_padctl_legacy_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 947, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register PHYs: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_xusb_padctl_legacy_probe._entry_ptr.8 = internal global ptr @tegra_xusb_padctl_legacy_probe._entry.6, section ".printk_index", align 4
@__kstrtab_tegra_xusb_padctl_legacy_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_xusb_padctl_legacy_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_xusb_padctl_legacy_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_xusb_padctl_legacy_probe to i32), ptr @__kstrtab_tegra_xusb_padctl_legacy_probe, ptr @__kstrtabns_tegra_xusb_padctl_legacy_probe }, section "___ksymtab_gpl+tegra_xusb_padctl_legacy_probe", align 4
@tegra_xusb_padctl_legacy_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 966, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to assert reset: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tegra_xusb_padctl_legacy_remove\00", [32 x i8] zeroinitializer }, align 32
@tegra_xusb_padctl_legacy_remove._entry_ptr = internal global ptr @tegra_xusb_padctl_legacy_remove._entry, section ".printk_index", align 4
@__kstrtab_tegra_xusb_padctl_legacy_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_xusb_padctl_legacy_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_xusb_padctl_legacy_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_xusb_padctl_legacy_remove to i32), ptr @__kstrtab_tegra_xusb_padctl_legacy_remove, ptr @__kstrtabns_tegra_xusb_padctl_legacy_remove }, section "___ksymtab_gpl+tegra_xusb_padctl_legacy_remove", align 4
@tegra124_soc = internal constant { %struct.tegra_xusb_padctl_soc, [40 x i8] } { %struct.tegra_xusb_padctl_soc { ptr @tegra124_pins, i32 12, ptr @tegra124_functions, i32 7, ptr @tegra124_lanes, i32 12 }, [40 x i8] zeroinitializer }, align 32
@tegra124_functions = internal global { [7 x %struct.tegra_xusb_padctl_function], [44 x i8] } { [7 x %struct.tegra_xusb_padctl_function] [%struct.tegra_xusb_padctl_function { ptr @.str.11, ptr @tegra124_snps_groups, i32 6 }, %struct.tegra_xusb_padctl_function { ptr @.str.12, ptr @tegra124_xusb_groups, i32 6 }, %struct.tegra_xusb_padctl_function { ptr @.str.13, ptr @tegra124_uart_groups, i32 3 }, %struct.tegra_xusb_padctl_function { ptr @.str.14, ptr @tegra124_pcie_groups, i32 5 }, %struct.tegra_xusb_padctl_function { ptr @.str.15, ptr @tegra124_usb3_groups, i32 3 }, %struct.tegra_xusb_padctl_function { ptr @.str.16, ptr @tegra124_sata_groups, i32 1 }, %struct.tegra_xusb_padctl_function { ptr @.str.17, ptr @tegra124_rsvd_groups, i32 9 }], [44 x i8] zeroinitializer }, align 32
@tegra124_lanes = internal constant { [12 x %struct.tegra_xusb_padctl_lane], [80 x i8] } { [12 x %struct.tegra_xusb_padctl_lane] [%struct.tegra_xusb_padctl_lane { ptr @.str.18, i32 4, i32 0, i32 3, i32 0, ptr @tegra124_otg_functions, i32 4 }, %struct.tegra_xusb_padctl_lane { ptr @.str.19, i32 4, i32 2, i32 3, i32 0, ptr @tegra124_otg_functions, i32 4 }, %struct.tegra_xusb_padctl_lane { ptr @.str.20, i32 4, i32 4, i32 3, i32 0, ptr @tegra124_otg_functions, i32 4 }, %struct.tegra_xusb_padctl_lane { ptr @.str.21, i32 4, i32 12, i32 1, i32 0, ptr @tegra124_usb_functions, i32 2 }, %struct.tegra_xusb_padctl_lane { ptr @.str.22, i32 4, i32 14, i32 1, i32 0, ptr @tegra124_usb_functions, i32 2 }, %struct.tegra_xusb_padctl_lane { ptr @.str.23, i32 4, i32 15, i32 1, i32 0, ptr @tegra124_usb_functions, i32 2 }, %struct.tegra_xusb_padctl_lane { ptr @.str.24, i32 308, i32 16, i32 3, i32 1, ptr @tegra124_pci_functions, i32 4 }, %struct.tegra_xusb_padctl_lane { ptr @.str.25, i32 308, i32 18, i32 3, i32 2, ptr @tegra124_pci_functions, i32 4 }, %struct.tegra_xusb_padctl_lane { ptr @.str.26, i32 308, i32 20, i32 3, i32 3, ptr @tegra124_pci_functions, i32 4 }, %struct.tegra_xusb_padctl_lane { ptr @.str.27, i32 308, i32 22, i32 3, i32 4, ptr @tegra124_pci_functions, i32 4 }, %struct.tegra_xusb_padctl_lane { ptr @.str.28, i32 308, i32 24, i32 3, i32 5, ptr @tegra124_pci_functions, i32 4 }, %struct.tegra_xusb_padctl_lane { ptr @.str.29, i32 308, i32 26, i32 3, i32 6, ptr @tegra124_pci_functions, i32 4 }], [80 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"snps\00", [27 x i8] zeroinitializer }, align 32
@tegra124_snps_groups = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xusb\00", [27 x i8] zeroinitializer }, align 32
@tegra124_xusb_groups = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@tegra124_uart_groups = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20], [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcie\00", [27 x i8] zeroinitializer }, align 32
@tegra124_pcie_groups = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb3\00", [27 x i8] zeroinitializer }, align 32
@tegra124_usb3_groups = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.29], [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sata\00", [27 x i8] zeroinitializer }, align 32
@tegra124_sata_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.29], [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rsvd\00", [27 x i8] zeroinitializer }, align 32
@tegra124_rsvd_groups = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"otg-0\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"otg-1\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"otg-2\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ulpi-0\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hsic-0\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hsic-1\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcie-0\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcie-1\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcie-2\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcie-3\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcie-4\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sata-0\00", [25 x i8] zeroinitializer }, align 32
@tegra124_otg_functions = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 6], [16 x i8] zeroinitializer }, align 32
@tegra124_usb_functions = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@tegra124_pci_functions = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 4, i32 5, i32 6], [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvidia,function\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvidia,lanes\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nvidia,iddq\00", [20 x i8] zeroinitializer }, align 32
@tegra_xusb_padctl_pinconf_group_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 357, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid configuration parameter: %04x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tegra_xusb_padctl_pinconf_group_get\00", [60 x i8] zeroinitializer }, align 32
@tegra_xusb_padctl_pinconf_group_get._entry_ptr = internal global ptr @tegra_xusb_padctl_pinconf_group_get._entry, section ".printk_index", align 4
@tegra_xusb_padctl_pinconf_group_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.35, ptr @.str.3, i32 401, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tegra_xusb_padctl_pinconf_group_set\00", [60 x i8] zeroinitializer }, align 32
@tegra_xusb_padctl_pinconf_group_set._entry_ptr = internal global ptr @tegra_xusb_padctl_pinconf_group_set._entry, section ".printk_index", align 4
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\0A\09%s=%lu\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s=%lu\00", [25 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 884, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [27 x i8] c"tegra_xusb_padctl_of_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 862, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [14 x i8] c"tegra124_pins\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 712, i32 38 }
@___asan_gen_.51 = private unnamed_addr constant [30 x i8] c"tegra_xusb_padctl_pinctrl_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 257, i32 33 }
@___asan_gen_.54 = private unnamed_addr constant [29 x i8] c"tegra_xusb_padctl_pinmux_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 320, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant [30 x i8] c"tegra_xusb_padctl_pinconf_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 468, i32 33 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 920, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [13 x i8] c"pcie_phy_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 602, i32 29 }
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"sata_phy_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 676, i32 29 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 947, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 966, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [13 x i8] c"tegra124_soc\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 853, i32 43 }
@___asan_gen_.102 = private unnamed_addr constant [19 x i8] c"tegra124_functions\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 788, i32 42 }
@___asan_gen_.105 = private unnamed_addr constant [15 x i8] c"tegra124_lanes\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 838, i32 44 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 789, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [21 x i8] c"tegra124_snps_groups\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 727, i32 27 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 790, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [21 x i8] c"tegra124_xusb_groups\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 736, i32 27 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 791, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [21 x i8] c"tegra124_uart_groups\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 745, i32 27 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 792, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [21 x i8] c"tegra124_pcie_groups\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 751, i32 27 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 793, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [21 x i8] c"tegra124_usb3_groups\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 759, i32 27 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 794, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [21 x i8] c"tegra124_sata_groups\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 765, i32 27 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 795, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [21 x i8] c"tegra124_rsvd_groups\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 769, i32 27 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 728, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 729, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 730, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 731, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 732, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 733, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 752, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 753, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 754, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 755, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 756, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 762, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [23 x i8] c"tegra124_otg_functions\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 808, i32 27 }
@___asan_gen_.189 = private unnamed_addr constant [23 x i8] c"tegra124_usb_functions\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 815, i32 27 }
@___asan_gen_.192 = private unnamed_addr constant [23 x i8] c"tegra124_pci_functions\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 820, i32 27 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 163, i32 36 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 194, i32 38 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 143, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 356, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 399, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 439, i32 17 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 450, i32 21 }
@___asan_gen_.225 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.226 = private constant [46 x i8] c"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 464, i32 16 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__ksymtab_tegra_xusb_padctl_legacy_probe, ptr @__ksymtab_tegra_xusb_padctl_legacy_remove, ptr @tegra_xusb_padctl_legacy_probe._entry, ptr @tegra_xusb_padctl_legacy_probe._entry.6, ptr @tegra_xusb_padctl_legacy_probe._entry_ptr, ptr @tegra_xusb_padctl_legacy_probe._entry_ptr.8, ptr @tegra_xusb_padctl_legacy_remove._entry, ptr @tegra_xusb_padctl_legacy_remove._entry_ptr, ptr @tegra_xusb_padctl_pinconf_group_get._entry, ptr @tegra_xusb_padctl_pinconf_group_get._entry_ptr, ptr @tegra_xusb_padctl_pinconf_group_set._entry, ptr @tegra_xusb_padctl_pinconf_group_set._entry_ptr, ptr @tegra_xusb_padctl_legacy_probe.__key, ptr @.str, ptr @tegra_xusb_padctl_of_match, ptr @tegra124_pins, ptr @tegra_xusb_padctl_pinctrl_ops, ptr @tegra_xusb_padctl_pinmux_ops, ptr @tegra_xusb_padctl_pinconf_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pcie_phy_ops, ptr @sata_phy_ops, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @tegra124_soc, ptr @tegra124_functions, ptr @tegra124_lanes, ptr @.str.11, ptr @tegra124_snps_groups, ptr @.str.12, ptr @tegra124_xusb_groups, ptr @.str.13, ptr @tegra124_uart_groups, ptr @.str.14, ptr @tegra124_pcie_groups, ptr @.str.15, ptr @tegra124_usb3_groups, ptr @.str.16, ptr @tegra124_sata_groups, ptr @.str.17, ptr @tegra124_rsvd_groups, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @tegra124_otg_functions, ptr @tegra124_usb_functions, ptr @tegra124_pci_functions, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_padctl_legacy_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_padctl_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_pins to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_padctl_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_padctl_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_padctl_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_padctl_legacy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_padctl_legacy_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_padctl_legacy_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_soc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_functions to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_lanes to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_snps_groups to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_xusb_groups to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_uart_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_pcie_groups to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_usb3_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_sata_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_rsvd_groups to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_otg_functions to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_usb_functions to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_pci_functions to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_padctl_pinconf_group_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_padctl_pinconf_group_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_xusb_padctl_legacy_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 172, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @tegra_xusb_padctl_legacy_probe.__key) #8
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call4 = tail call ptr @of_match_node(ptr noundef nonnull @tegra_xusb_padctl_of_match, ptr noundef %3) #8
  %data = getelementptr inbounds %struct.of_device_id, ptr %call4, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %soc = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %soc, align 4
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call.i131 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %rst = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i131, ptr %rst, align 4
  %cmp.i132 = icmp ugt ptr %call.i131, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call.i131 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %call21 = tail call i32 @reset_control_deassert(ptr noundef %call.i131) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %desc = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call.i, i32 0, i32 6
  %11 = call ptr @memset(ptr %desc, i32 0, i32 44)
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end23.dev_name.exit_crit_edge

if.end23.dev_name.exit_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end23.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %17, %if.end.i ], [ %15, %if.end23.dev_name.exit_crit_edge ]
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i, ptr %desc, align 4
  %pins = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call.i, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tegra124_pins, ptr %pins, align 4
  %npins = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call.i, i32 0, i32 6, i32 2
  %20 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 12, ptr %npins, align 4
  %pctlops = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call.i, i32 0, i32 6, i32 3
  %21 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @tegra_xusb_padctl_pinctrl_ops, ptr %pctlops, align 4
  %pmxops = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call.i, i32 0, i32 6, i32 4
  %22 = ptrtoint ptr %pmxops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @tegra_xusb_padctl_pinmux_ops, ptr %pmxops, align 4
  %confops = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call.i, i32 0, i32 6, i32 5
  %23 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @tegra_xusb_padctl_pinconf_ops, ptr %confops, align 4
  %owner = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call.i, i32 0, i32 6, i32 6
  %24 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %owner, align 4
  %call35 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %call.i) #8
  %pinctrl = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %pinctrl to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call35, ptr %pinctrl, align 4
  %cmp.i133 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %do.end41, label %if.end45

do.end41:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  %26 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pinctrl, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %reset

if.end45:                                         ; preds = %dev_name.exit
  %call47 = tail call ptr @devm_phy_create(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @pcie_phy_ops) #8
  %cmp.i134 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %call47 to i32
  br label %reset

if.end51:                                         ; preds = %if.end45
  %phys = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call.i, i32 0, i32 8
  %30 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call47, ptr %phys, align 4
  %driver_data.i.i135 = getelementptr inbounds %struct.device, ptr %call47, i32 0, i32 8
  %31 = ptrtoint ptr %driver_data.i.i135 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i.i135, align 4
  %call53 = tail call ptr @devm_phy_create(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @sata_phy_ops) #8
  %cmp.i136 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %call53 to i32
  br label %reset

if.end57:                                         ; preds = %if.end51
  %arrayidx59 = getelementptr %struct.tegra_xusb_padctl, ptr %call.i, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call53, ptr %arrayidx59, align 4
  %driver_data.i.i137 = getelementptr inbounds %struct.device, ptr %call53, i32 0, i32 8
  %34 = ptrtoint ptr %driver_data.i.i137 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %driver_data.i.i137, align 4
  %call61 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @tegra_xusb_padctl_xlate) #8
  %provider = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call.i, i32 0, i32 7
  %35 = ptrtoint ptr %provider to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call61, ptr %provider, align 4
  %cmp.i138 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138, label %if.then64, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then64:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %call61 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %36) #11
  br label %reset

reset:                                            ; preds = %if.then64, %if.then55, %if.then49, %do.end41
  %err.0 = phi i32 [ %28, %do.end41 ], [ %29, %if.then49 ], [ %32, %if.then55 ], [ %36, %if.then64 ]
  %37 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rst, align 4
  %call73 = tail call i32 @reset_control_assert(ptr noundef %38) #8
  br label %cleanup

cleanup:                                          ; preds = %reset, %if.end57.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then16, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then8 ], [ %10, %if.then16 ], [ %err.0, %reset ], [ -12, %entry.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ], [ 0, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @tegra_xusb_padctl_xlate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %args) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %args1 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %0 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args1, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp3 = icmp ugt i32 %1, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %arrayidx7 = getelementptr %struct.tegra_xusb_padctl, ptr %5, i32 0, i32 8, i32 %1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.end6 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_xusb_padctl_legacy_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rst = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call1) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_get_groups_count(ptr noundef %pinctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pinctrl) #8
  %soc = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %num_pins = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pins, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_xusb_padctl_get_group_name(ptr noundef %pinctrl, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pinctrl) #8
  %soc = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %name = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %group, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_xusb_padctl_get_group_pins(ptr nocapture noundef readonly %pinctrl, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pinctrl, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pins1 = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins1, align 4
  %arrayidx = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %group
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %pins, align 4
  %5 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_dt_node_to_map(ptr noundef %pinctrl, ptr noundef %parent, ptr noundef %maps, ptr noundef %num_maps) #0 align 64 {
entry:
  %num_configs.i = alloca i32, align 4
  %configs.i = alloca ptr, align 4
  %function.i = alloca ptr, align 4
  %value.i = alloca i32, align 4
  %reserved_maps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pinctrl) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reserved_maps) #8
  %0 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reserved_maps, align 4
  %1 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %num_maps, align 4
  %2 = ptrtoint ptr %maps to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %maps, align 4
  %call1 = tail call ptr @of_get_next_child(ptr noundef %parent, ptr noundef null) #8
  %cmp.not30 = icmp eq ptr %call1, null
  br i1 %cmp.not30, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %pinctrl.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %np.031 = phi ptr [ %call1, %for.body.lr.ph ], [ %call4, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_configs.i) #8
  %3 = ptrtoint ptr %num_configs.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %num_configs.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %configs.i) #8
  %4 = ptrtoint ptr %configs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %configs.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %function.i) #8
  %5 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %function.i, align 4, !annotation !134
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %6 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value.i, align 4, !annotation !134
  %call.i = call i32 @of_property_read_string(ptr noundef nonnull %np.031, ptr noundef nonnull @.str.30, ptr noundef nonnull %function.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %for.body.if.end3.i_crit_edge

for.body.if.end3.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, -22
  br i1 %cmp1.not.i, label %if.end.i, label %tegra_xusb_padctl_parse_subnode.exit.thread

tegra_xusb_padctl_parse_subnode.exit.thread:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %function.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_configs.i) #8
  br label %if.then

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %function.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i, %for.body.if.end3.i_crit_edge
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.031, ptr noundef nonnull @.str.32, ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp6.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.end11.i

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i.i.i)
  %cmp8.i = icmp eq i32 %call.i.i.i, -22
  br i1 %cmp8.i, label %if.then7.i.for.end.i_crit_edge, label %if.then7.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge

if.then7.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_xusb_padctl_parse_subnode.exit.thread18

if.then7.i.for.end.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end11.i:                                       ; preds = %if.end3.i
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value.i, align 4
  %10 = ptrtoint ptr %pinctrl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pinctrl.i, align 4
  %call13.i = call i32 @pinctrl_utils_add_config(ptr noundef %11, ptr noundef nonnull %configs.i, ptr noundef nonnull %num_configs.i, i32 noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end11.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge, label %if.end11.i.for.end.i_crit_edge

if.end11.i.for.end.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end11.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_xusb_padctl_parse_subnode.exit.thread18

for.end.i:                                        ; preds = %if.end11.i.for.end.i_crit_edge, %if.then7.i.for.end.i_crit_edge
  %12 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %function.i, align 4
  %14 = ptrtoint ptr %num_configs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_configs.i, align 4
  %call.i.i = call i32 @of_property_read_string_helper(ptr noundef nonnull %np.031, ptr noundef nonnull @.str.31, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp25.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp25.i, label %for.end.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge, label %if.end27.i

for.end.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_xusb_padctl_parse_subnode.exit.thread18

if.end27.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool20.not.i = icmp eq i32 %15, 0
  %tobool.not.i = icmp ne ptr %13, null
  %spec.select.i = zext i1 %tobool.not.i to i32
  %inc22.i = select i1 %tobool.not.i, i32 2, i32 1
  %reserve.1.i = select i1 %tobool20.not.i, i32 %spec.select.i, i32 %inc22.i
  %mul.i = mul nuw i32 %reserve.1.i, %call.i.i
  %16 = ptrtoint ptr %pinctrl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pinctrl.i, align 4
  %call29.i = call i32 @pinctrl_utils_reserve_map(ptr noundef %17, ptr noundef %maps, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, i32 noundef %mul.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %if.end27.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge, label %if.end32.i

if.end27.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_xusb_padctl_parse_subnode.exit.thread18

if.end32.i:                                       ; preds = %if.end27.i
  %call33.i = call ptr @of_find_property(ptr noundef nonnull %np.031, ptr noundef nonnull @.str.31, ptr noundef null) #8
  %call34.i = call ptr @of_prop_next_string(ptr noundef %call33.i, ptr noundef null) #8
  %tobool36.not100.i = icmp eq ptr %call34.i, null
  br i1 %tobool36.not100.i, label %if.end32.i.for.inc_crit_edge, label %if.end32.i.for.body37.i_crit_edge

if.end32.i.for.body37.i_crit_edge:                ; preds = %if.end32.i
  br label %for.body37.i

if.end32.i.for.inc_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body37.i:                                     ; preds = %for.inc54.i.for.body37.i_crit_edge, %if.end32.i.for.body37.i_crit_edge
  %group.0101.i = phi ptr [ %call55.i, %for.inc54.i.for.body37.i_crit_edge ], [ %call34.i, %if.end32.i.for.body37.i_crit_edge ]
  %18 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %function.i, align 4
  %tobool38.not.i = icmp eq ptr %19, null
  br i1 %tobool38.not.i, label %for.body37.i.if.end45.i_crit_edge, label %if.then39.i

for.body37.i.if.end45.i_crit_edge:                ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.then39.i:                                      ; preds = %for.body37.i
  %20 = ptrtoint ptr %pinctrl.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pinctrl.i, align 4
  %call41.i = call i32 @pinctrl_utils_add_map_mux(ptr noundef %21, ptr noundef %maps, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, ptr noundef nonnull %group.0101.i, ptr noundef nonnull %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp42.i = icmp slt i32 %call41.i, 0
  br i1 %cmp42.i, label %if.then39.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge, label %if.then39.i.if.end45.i_crit_edge

if.then39.i.if.end45.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.then39.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_xusb_padctl_parse_subnode.exit.thread18

if.end45.i:                                       ; preds = %if.then39.i.if.end45.i_crit_edge, %for.body37.i.if.end45.i_crit_edge
  %22 = ptrtoint ptr %num_configs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_configs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool46.not.i = icmp eq i32 %23, 0
  br i1 %tobool46.not.i, label %if.end45.i.for.inc54.i_crit_edge, label %if.then47.i

if.end45.i.for.inc54.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc54.i

if.then47.i:                                      ; preds = %if.end45.i
  %24 = ptrtoint ptr %pinctrl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pinctrl.i, align 4
  %26 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %configs.i, align 4
  %call49.i = call i32 @pinctrl_utils_add_map_configs(ptr noundef %25, ptr noundef %maps, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, ptr noundef nonnull %group.0101.i, ptr noundef %27, i32 noundef %23, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %cmp50.i = icmp slt i32 %call49.i, 0
  br i1 %cmp50.i, label %if.then47.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge, label %if.then47.i.for.inc54.i_crit_edge

if.then47.i.for.inc54.i_crit_edge:                ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc54.i

if.then47.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge: ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_xusb_padctl_parse_subnode.exit.thread18

for.inc54.i:                                      ; preds = %if.then47.i.for.inc54.i_crit_edge, %if.end45.i.for.inc54.i_crit_edge
  %call55.i = call ptr @of_prop_next_string(ptr noundef %call33.i, ptr noundef nonnull %group.0101.i) #8
  %tobool36.not.i = icmp eq ptr %call55.i, null
  br i1 %tobool36.not.i, label %for.inc54.i.for.inc_crit_edge, label %for.inc54.i.for.body37.i_crit_edge

for.inc54.i.for.body37.i_crit_edge:               ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body37.i

for.inc54.i.for.inc_crit_edge:                    ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

tegra_xusb_padctl_parse_subnode.exit.thread18:    ; preds = %if.then47.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge, %if.then39.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge, %if.end27.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge, %for.end.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge, %if.end11.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge, %if.then7.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge
  %err.0.i.ph = phi i32 [ %call41.i, %if.then39.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge ], [ %call49.i, %if.then47.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge ], [ %call.i.i.i, %if.then7.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge ], [ %call13.i, %if.end11.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge ], [ %call.i.i, %for.end.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge ], [ %call29.i, %if.end27.i.tegra_xusb_padctl_parse_subnode.exit.thread18_crit_edge ]
  %28 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %configs.i, align 4
  call void @kfree(ptr noundef %29) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %function.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_configs.i) #8
  br label %if.then

if.then:                                          ; preds = %tegra_xusb_padctl_parse_subnode.exit.thread18, %tegra_xusb_padctl_parse_subnode.exit.thread
  %retval.0.i17 = phi i32 [ %call.i, %tegra_xusb_padctl_parse_subnode.exit.thread ], [ %err.0.i.ph, %tegra_xusb_padctl_parse_subnode.exit.thread18 ]
  call void @of_node_put(ptr noundef nonnull %np.031) #8
  br label %cleanup

for.inc:                                          ; preds = %for.inc54.i.for.inc_crit_edge, %if.end32.i.for.inc_crit_edge
  %30 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %configs.i, align 4
  call void @kfree(ptr noundef %31) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %function.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_configs.i) #8
  %call4 = call ptr @of_get_next_child(ptr noundef %parent, ptr noundef nonnull %np.031) #8
  %cmp.not = icmp eq ptr %call4, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i17, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reserved_maps) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_config(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_reserve_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_mux(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_configs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_get_functions_count(ptr noundef %pinctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pinctrl) #8
  %soc = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %num_functions = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_functions, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_xusb_padctl_get_function_name(ptr noundef %pinctrl, i32 noundef %function) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pinctrl) #8
  %soc = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %functions = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.tegra_xusb_padctl_function, ptr %3, i32 %function
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_get_function_groups(ptr noundef %pinctrl, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pinctrl) #8
  %soc = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %functions = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %num_groups1 = getelementptr %struct.tegra_xusb_padctl_function, ptr %3, i32 %function, i32 2
  %4 = ptrtoint ptr %num_groups1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_groups1, align 4
  %6 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %num_groups, align 4
  %7 = load ptr, ptr %soc, align 4
  %functions3 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %functions3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functions3, align 4
  %groups5 = getelementptr %struct.tegra_xusb_padctl_function, ptr %9, i32 %function, i32 1
  %10 = ptrtoint ptr %groups5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %groups5, align 4
  %12 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_pinmux_set(ptr noundef %pinctrl, i32 noundef %function, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pinctrl) #8
  %soc = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %lanes = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lanes, align 4
  %num_funcs = getelementptr %struct.tegra_xusb_padctl_lane, ptr %3, i32 %group, i32 6
  %4 = ptrtoint ptr %num_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_funcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp32.not = icmp eq i32 %5, 0
  br i1 %cmp32.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %funcs = getelementptr %struct.tegra_xusb_padctl_lane, ptr %3, i32 %group, i32 5
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %7, i32 %i.033
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %function)
  %cmp2 = icmp eq i32 %9, %function
  br i1 %cmp2, label %if.end6, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %offset = getelementptr %struct.tegra_xusb_padctl_lane, ptr %3, i32 %group, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %11
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !135
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %mask = getelementptr %struct.tegra_xusb_padctl_lane, ptr %3, i32 %group, i32 3
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask, align 4
  %shift = getelementptr %struct.tegra_xusb_padctl_lane, ptr %3, i32 %group, i32 2
  %18 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %shift, align 4
  %shl = shl i32 %17, %19
  %neg = xor i32 %shl, -1
  %and = and i32 %15, %neg
  %shl9 = shl i32 %i.033, %19
  %or = or i32 %and, %shl9
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %24, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %22) #8, !srcloc !138
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_pinconf_group_get(ptr noundef %pinctrl, i32 noundef %group, ptr nocapture noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pinctrl) #8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %soc = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %lanes = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %1)
  %cond = icmp ult i32 %1, 65536
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  %iddq = getelementptr %struct.tegra_xusb_padctl_lane, ptr %5, i32 %group, i32 4
  %6 = ptrtoint ptr %iddq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iddq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %offset = getelementptr %struct.tegra_xusb_padctl_lane, ptr %5, i32 %group, i32 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %9
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %13 = ptrtoint ptr %iddq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iddq, align 4
  %15 = xor i32 %12, -1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = lshr i32 %16, %14
  %18 = and i32 %17, 1
  %19 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %config, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i32 %1, 16
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.33, i32 noundef %shr) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -524, %do.end ], [ -22, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_pinconf_group_set(ptr noundef %pinctrl, i32 noundef %group, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pinctrl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp33.not = icmp eq i32 %num_configs, 0
  br i1 %cmp33.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %soc = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %lanes = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lanes, align 4
  %iddq = getelementptr %struct.tegra_xusb_padctl_lane, ptr %3, i32 %group, i32 4
  %offset = getelementptr %struct.tegra_xusb_padctl_lane, ptr %3, i32 %group, i32 1
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %configs, i32 %i.034
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %and = and i32 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %5)
  %cond = icmp ult i32 %5, 65536
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %for.body
  %6 = ptrtoint ptr %iddq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iddq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %9
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !135
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %14 = ptrtoint ptr %iddq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iddq, align 4
  %shl9 = shl nuw i32 1, %15
  %neg = xor i32 %shl9, -1
  %and7 = and i32 %13, %neg
  %or = or i32 %shl9, %13
  %regval.0 = select i1 %tobool.not, i32 %or, i32 %and7
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %regval.0) #8
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %20, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %18) #8, !srcloc !138
  %inc = add nuw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i32 %5, 16
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.33, i32 noundef %shr) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_xusb_padctl_pinconf_group_dbg_show(ptr noundef %pinctrl, ptr noundef %s, i32 noundef %group) #0 align 64 {
sw.bb.i:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pinctrl) #8
  %soc.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc.i, align 4
  %lanes.i = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lanes.i, align 4
  %iddq.i = getelementptr %struct.tegra_xusb_padctl_lane, ptr %3, i32 %group, i32 4
  %4 = ptrtoint ptr %iddq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iddq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %sw.bb.i.cleanup_crit_edge, label %if.end

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %offset.i = getelementptr %struct.tegra_xusb_padctl_lane, ptr %3, i32 %group, i32 1
  %6 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset.i, align 4
  %regs.i.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %11 = ptrtoint ptr %iddq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iddq.i, align 4
  %13 = xor i32 %10, -1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  %15 = lshr i32 %14, %12
  %16 = and i32 %15, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.36, ptr noundef getelementptr inbounds ([12 x i8], ptr @.str.32, i32 0, i32 7), i32 noundef %16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_xusb_padctl_pinconf_config_dbg_show(ptr nocapture noundef readnone %pinctrl, ptr noundef %s, i32 noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %config)
  %cmp2 = icmp ult i32 %config, 65536
  %name.0 = select i1 %cmp2, ptr @.str.32, ptr @.str.37
  %and = and i32 %config, 65535
  %call.i = tail call ptr @strchr(ptr noundef nonnull %name.0, i32 noundef 44) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 1
  %retval.0.i = select i1 %tobool.not.i, ptr %name.0, ptr %add.ptr.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.38, ptr noundef %retval.0.i, i32 noundef %and) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xusb_phy_init(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %enable.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.tegra_xusb_padctl_enable.exit_crit_edge

entry.tegra_xusb_padctl_enable.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_xusb_padctl_enable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regs.i.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %7 = and i32 %6, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %9, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %7) #8, !srcloc !138
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %11, i32 28
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %13 = and i32 %12, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %13) #8, !srcloc !138
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %17, i32 28
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %19 = and i32 %18, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %19) #8, !srcloc !138
  br label %tegra_xusb_padctl_enable.exit

tegra_xusb_padctl_enable.exit:                    ; preds = %if.end.i, %entry.tegra_xusb_padctl_enable.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xusb_phy_exit(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %enable.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %do.end.i, label %if.end21.critedge.i, !prof !139

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 513, i32 noundef 9, ptr noundef null) #8
  br label %tegra_xusb_padctl_disable.exit

if.end21.critedge.i:                              ; preds = %entry
  %dec.i = add i32 %3, -1
  %4 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec.i, ptr %enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp23.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp23.not.i, label %if.end25.i, label %if.end21.critedge.i.tegra_xusb_padctl_disable.exit_crit_edge

if.end21.critedge.i.tegra_xusb_padctl_disable.exit_crit_edge: ; preds = %if.end21.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_xusb_padctl_disable.exit

if.end25.i:                                       ; preds = %if.end21.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  %regs.i.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 28
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %8 = or i32 %7, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %8) #8, !srcloc !138
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %12, i32 28
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %14 = or i32 %13, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %16, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %14) #8, !srcloc !138
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %18, i32 28
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %20 = or i32 %19, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %22, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %20) #8, !srcloc !138
  br label %tegra_xusb_padctl_disable.exit

tegra_xusb_padctl_disable.exit:                   ; preds = %if.end25.i, %if.end21.critedge.i.tegra_xusb_padctl_disable.exit_crit_edge, %do.end.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcie_phy_power_on(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %5 = and i32 %4, -15728641
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %5) #8, !srcloc !138
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %9, i32 68
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %11 = or i32 %10, 1879048192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %13, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %11) #8, !srcloc !138
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %15, i32 64
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %17 = or i32 %16, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %19, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %17) #8, !srcloc !138
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -5, %20
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub32 = add i32 %add.neg, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub32)
  %cmp33 = icmp slt i32 %sub32, 0
  br i1 %cmp33, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %23, i32 64
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %25 = and i32 %24, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end:                                           ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %26
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %err.0 = phi i32 [ -110, %entry.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ], [ -110, %if.end.while.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcie_phy_power_off(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %5 = and i32 %4, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %5) #8, !srcloc !138
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_phy_power_on(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 328
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %5 = and i32 %4, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %7, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %5) #8, !srcloc !138
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %9, i32 312
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %11 = and i32 %10, -150994945
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %13, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %11) #8, !srcloc !138
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %15, i32 312
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %17 = or i32 %16, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %19, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %17) #8, !srcloc !138
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %21, i32 312
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %23 = or i32 %22, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %25, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %23) #8, !srcloc !138
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -5, %26
  %27 = load volatile i32, ptr @jiffies, align 128
  %sub46 = add i32 %add.neg, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub46)
  %cmp47 = icmp slt i32 %sub46, 0
  br i1 %cmp47, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %29, i32 312
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %31 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not = icmp eq i32 %31, 0
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end:                                           ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %32
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %err.0 = phi i32 [ -110, %entry.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ], [ -110, %if.end.while.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_phy_power_off(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 312
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %5 = and i32 %4, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %7, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %5) #8, !srcloc !138
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %9, i32 312
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %11 = and i32 %10, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %13, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %11) #8, !srcloc !138
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %15, i32 312
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %17 = or i32 %16, 150994944
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %19, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %17) #8, !srcloc !138
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %21, i32 328
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %24, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 -1) #8, !srcloc !138
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !110, !111, !113, !114, !115, !117, !119, !121, !123}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @tegra_xusb_padctl_legacy_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 884, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 920, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @tegra_xusb_padctl_legacy_probe._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @tegra_xusb_padctl_legacy_probe._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 947, i32 3}
!13 = !{ptr @tegra_xusb_padctl_legacy_probe._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @tegra_xusb_padctl_legacy_probe._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_tegra_xusb_padctl_legacy_probe, !16, !"__ksymtab_tegra_xusb_padctl_legacy_probe", i1 false, i1 false}
!16 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 957, i32 1}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 966, i32 3}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tegra_xusb_padctl_legacy_remove._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @tegra_xusb_padctl_legacy_remove._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_tegra_xusb_padctl_legacy_remove, !23, !"__ksymtab_tegra_xusb_padctl_legacy_remove", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 970, i32 1}
!24 = !{ptr @tegra_xusb_padctl_of_match, !25, !"tegra_xusb_padctl_of_match", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 862, i32 34}
!26 = !{ptr @tegra124_soc, !27, !"tegra124_soc", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 853, i32 43}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 789, i32 2}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 790, i32 2}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 791, i32 2}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 792, i32 2}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 793, i32 2}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 794, i32 2}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 795, i32 2}
!42 = !{ptr @tegra124_functions, !43, !"tegra124_functions", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 788, i32 42}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 728, i32 2}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 729, i32 2}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 730, i32 2}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 731, i32 2}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 732, i32 2}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 733, i32 2}
!56 = !{ptr @tegra124_snps_groups, !57, !"tegra124_snps_groups", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 727, i32 27}
!58 = !{ptr @tegra124_xusb_groups, !59, !"tegra124_xusb_groups", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 736, i32 27}
!60 = !{ptr @tegra124_uart_groups, !61, !"tegra124_uart_groups", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 745, i32 27}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 752, i32 2}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 753, i32 2}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 754, i32 2}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 755, i32 2}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 756, i32 2}
!72 = !{ptr @tegra124_pcie_groups, !73, !"tegra124_pcie_groups", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 751, i32 27}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 762, i32 2}
!76 = !{ptr @tegra124_usb3_groups, !77, !"tegra124_usb3_groups", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 759, i32 27}
!78 = !{ptr @tegra124_sata_groups, !79, !"tegra124_sata_groups", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 765, i32 27}
!80 = !{ptr @tegra124_rsvd_groups, !81, !"tegra124_rsvd_groups", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 769, i32 27}
!82 = !{ptr @tegra124_lanes, !83, !"tegra124_lanes", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 838, i32 44}
!84 = !{ptr @tegra124_otg_functions, !85, !"tegra124_otg_functions", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 808, i32 27}
!86 = !{ptr @tegra124_usb_functions, !87, !"tegra124_usb_functions", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 815, i32 27}
!88 = !{ptr @tegra124_pci_functions, !89, !"tegra124_pci_functions", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 820, i32 27}
!90 = !{ptr @tegra124_pins, !91, !"tegra124_pins", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 712, i32 38}
!92 = !{ptr @tegra_xusb_padctl_pinctrl_ops, !93, !"tegra_xusb_padctl_pinctrl_ops", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 257, i32 33}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 163, i32 36}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 194, i32 38}
!98 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 143, i32 4}
!100 = distinct !{null, !101, !"properties", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 142, i32 3}
!102 = !{ptr @tegra_xusb_padctl_pinmux_ops, !103, !"tegra_xusb_padctl_pinmux_ops", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 320, i32 32}
!104 = !{ptr @tegra_xusb_padctl_pinconf_ops, !105, !"tegra_xusb_padctl_pinconf_ops", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 468, i32 33}
!106 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 356, i32 3}
!108 = !{ptr @.str.34, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @tegra_xusb_padctl_pinconf_group_get._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @tegra_xusb_padctl_pinconf_group_get._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.35, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 399, i32 4}
!113 = !{ptr @tegra_xusb_padctl_pinconf_group_set._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @tegra_xusb_padctl_pinconf_group_set._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.36, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 439, i32 17}
!117 = !{ptr @.str.37, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 450, i32 21}
!119 = !{ptr @.str.38, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 464, i32 16}
!121 = !{ptr @pcie_phy_ops, !122, !"pcie_phy_ops", i1 false, i1 false}
!122 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 602, i32 29}
!123 = !{ptr @sata_phy_ops, !124, !"sata_phy_ops", i1 false, i1 false}
!124 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c", i32 676, i32 29}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{!"auto-init"}
!135 = !{i64 2999474}
!136 = !{i64 2155119769}
!137 = !{i64 2155118913}
!138 = !{i64 2999056}
!139 = !{!"branch_weights", i32 1, i32 2000}
