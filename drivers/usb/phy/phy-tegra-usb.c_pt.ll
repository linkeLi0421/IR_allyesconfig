; ModuleID = '/llk/IR_all_yes/drivers/usb/phy/phy-tegra-usb.c_pt.bc'
source_filename = "../drivers/usb/phy/phy-tegra-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tegra_usb_phy_preresume\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_usb_phy_preresume\09\09\09\09"
module asm "\09.long\09__crc_tegra_usb_phy_preresume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_usb_phy_preresume:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_usb_phy_preresume\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_usb_phy_preresume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tegra_usb_phy_postresume\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_usb_phy_postresume\09\09\09\09"
module asm "\09.long\09__crc_tegra_usb_phy_postresume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_usb_phy_postresume:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_usb_phy_postresume\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_usb_phy_postresume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tegra_ehci_phy_restore_start\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_ehci_phy_restore_start\09\09\09\09"
module asm "\09.long\09__crc_tegra_ehci_phy_restore_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_ehci_phy_restore_start:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_ehci_phy_restore_start\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_ehci_phy_restore_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tegra_ehci_phy_restore_end\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_ehci_phy_restore_end\09\09\09\09"
module asm "\09.long\09__crc_tegra_ehci_phy_restore_end\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_ehci_phy_restore_end:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_ehci_phy_restore_end\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_ehci_phy_restore_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_phy_io_ops = type { ptr, ptr }
%struct.tegra_xtal_freq = type { i32, i8, i8, i8, i8, i16 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_phy_soc_config = type { i8, i8, i8, i8, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_usb_phy = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.usb_phy, i8, i8, ptr, ptr, i8, i8, i8 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.tegra_utmip_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__kstrtab_tegra_usb_phy_preresume = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_usb_phy_preresume = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_usb_phy_preresume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_usb_phy_preresume to i32), ptr @__kstrtab_tegra_usb_phy_preresume, ptr @__kstrtabns_tegra_usb_phy_preresume }, section "___ksymtab_gpl+tegra_usb_phy_preresume", align 4
@__kstrtab_tegra_usb_phy_postresume = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_usb_phy_postresume = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_usb_phy_postresume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_usb_phy_postresume to i32), ptr @__kstrtab_tegra_usb_phy_postresume, ptr @__kstrtabns_tegra_usb_phy_postresume }, section "___ksymtab_gpl+tegra_usb_phy_postresume", align 4
@__kstrtab_tegra_ehci_phy_restore_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_ehci_phy_restore_start = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_ehci_phy_restore_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_ehci_phy_restore_start to i32), ptr @__kstrtab_tegra_ehci_phy_restore_start, ptr @__kstrtabns_tegra_ehci_phy_restore_start }, section "___ksymtab_gpl+tegra_ehci_phy_restore_start", align 4
@__kstrtab_tegra_ehci_phy_restore_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_ehci_phy_restore_end = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_ehci_phy_restore_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_ehci_phy_restore_end to i32), ptr @__kstrtab_tegra_ehci_phy_restore_end, ptr @__kstrtabns_tegra_ehci_phy_restore_end }, section "___ksymtab_gpl+tegra_ehci_phy_restore_end", align 4
@__initcall__kmod_phy_tegra_usb__293_1500_tegra_usb_phy_driver_init6 = internal global ptr @tegra_usb_phy_driver_init, section ".initcall6.init", align 4
@tegra_usb_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_usb_phy_probe, ptr @tegra_usb_phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_usb_phy_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_usb_phy_driver_exit = internal global ptr @tegra_usb_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [47 x i8] c"phy_tegra_usb.description=Tegra USB PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [49 x i8] c"phy_tegra_usb.file=drivers/usb/phy/phy-tegra-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [29 x i8] c"phy_tegra_usb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-phy\00", [22 x i8] zeroinitializer }, align 32
@tegra_usb_phy_id_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_soc_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_soc_config }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tegra_usb_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1360, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get I/O memory\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_usb_phy_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/phy/phy-tegra-usb.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_usb_phy_probe._entry_ptr = internal global ptr @tegra_usb_phy_probe._entry, section ".printk_index", align 4
@tegra_usb_phy_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1371, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to remap I/O memory\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_usb_phy_probe._entry_ptr.8 = internal global ptr @tegra_usb_phy_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvidia,has-legacy-mode\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dr_mode\00", [24 x i8] zeroinitializer }, align 32
@tegra_usb_phy_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1384, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dr_mode is invalid\0A\00", [44 x i8] zeroinitializer }, align 32
@tegra_usb_phy_probe._entry_ptr.13 = internal global ptr @tegra_usb_phy_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_u\00", [26 x i8] zeroinitializer }, align 32
@tegra_usb_phy_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1396, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get pll_u clock: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_usb_phy_probe._entry_ptr.18 = internal global ptr @tegra_usb_phy_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get PMC regmap\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"utmi-pads\00", [22 x i8] zeroinitializer }, align 32
@tegra_usb_phy_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1417, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get UTMIP pad clock: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_usb_phy_probe._entry_ptr.23 = internal global ptr @tegra_usb_phy_probe._entry.21, section ".printk_index", align 4
@tegra_usb_phy_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1426, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get UTMI-pads reset: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_usb_phy_probe._entry_ptr.26 = internal global ptr @tegra_usb_phy_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ulpi-link\00", [22 x i8] zeroinitializer }, align 32
@tegra_usb_phy_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 1439, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get ULPI clock: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_usb_phy_probe._entry_ptr.30 = internal global ptr @tegra_usb_phy_probe._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvidia,phy-reset-gpio\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ulpi_phy_reset_b\00", [47 x i8] zeroinitializer }, align 32
@tegra_usb_phy_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 1450, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Request failed for reset GPIO: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_usb_phy_probe._entry_ptr.35 = internal global ptr @tegra_usb_phy_probe._entry.33, section ".printk_index", align 4
@ulpi_viewport_access_ops = external dso_local global %struct.usb_phy_io_ops, align 4
@tegra_usb_phy_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.2, ptr @.str.3, i32 1458, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to create ULPI OTG\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_usb_phy_probe._entry_ptr.38 = internal global ptr @tegra_usb_phy_probe._entry.36, section ".printk_index", align 4
@tegra_usb_phy_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.2, ptr @.str.3, i32 1468, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"phy_type %u is invalid or unsupported\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_usb_phy_probe._entry_ptr.41 = internal global ptr @tegra_usb_phy_probe._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvidia,pmc\00", [21 x i8] zeroinitializer }, align 32
@tegra_usb_phy_parse_pmc.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@tegra_usb_phy_parse_pmc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 1291, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"nvidia,pmc is missing, please update your device-tree\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_usb_phy_parse_pmc\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tegra_usb_phy_parse_pmc._entry_ptr = internal global ptr @tegra_usb_phy_parse_pmc._entry, section ".printk_index", align 4
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb_sleepwalk\00", [18 x i8] zeroinitializer }, align 32
@utmi_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 1191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get UTMI pad regs\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"utmi_phy_probe\00", [17 x i8] zeroinitializer }, align 32
@utmi_phy_probe._entry_ptr = internal global ptr @utmi_phy_probe._entry, section ".printk_index", align 4
@utmi_phy_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 1202, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to remap UTMI pad regs\0A\00", [33 x i8] zeroinitializer }, align 32
@utmi_phy_probe._entry_ptr.51 = internal global ptr @utmi_phy_probe._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvidia,hssync-start-delay\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvidia,elastic-limit\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvidia,idle-wait-delay\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvidia,term-range-adj\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvidia,xcvr-lsfslew\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvidia,xcvr-lsrslew\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvidia,xcvr-hsslew\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvidia,hssquelch-level\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvidia,hsdiscon-level\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nvidia,xcvr-setup-use-fuses\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvidia,xcvr-setup\00", [46 x i8] zeroinitializer }, align 32
@read_utmi_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 1173, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to read USB UTMI parameter %s: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read_utmi_param\00", [16 x i8] zeroinitializer }, align 32
@read_utmi_param._entry_ptr = internal global ptr @read_utmi_param._entry, section ".printk_index", align 4
@tegra_freq_table = internal constant { [4 x %struct.tegra_xtal_freq], [48 x i8] } { [4 x %struct.tegra_xtal_freq] [%struct.tegra_xtal_freq { i32 12000000, i8 2, i8 47, i8 4, i8 118, i16 30000 }, %struct.tegra_xtal_freq { i32 13000000, i8 2, i8 51, i8 5, i8 127, i16 32500 }, %struct.tegra_xtal_freq { i32 19200000, i8 3, i8 75, i8 6, i8 -69, i16 -17536 }, %struct.tegra_xtal_freq { i32 26000000, i8 4, i8 102, i8 9, i8 -2, i16 -536 }], [48 x i8] zeroinitializer }, align 32
@tegra_usb_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 1083, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid pll_u parent rate %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_usb_phy_init\00", [45 x i8] zeroinitializer }, align 32
@tegra_usb_phy_init._entry_ptr = internal global ptr @tegra_usb_phy_init._entry, section ".printk_index", align 4
@tegra_usb_phy_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.3, i32 1091, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to enable USB VBUS regulator: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@tegra_usb_phy_init._entry_ptr.69 = internal global ptr @tegra_usb_phy_init._entry.67, section ".printk_index", align 4
@utmip_pad_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 269, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to enable UTMI-pads clock: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"utmip_pad_open\00", [17 x i8] zeroinitializer }, align 32
@utmip_pad_open._entry_ptr = internal global ptr @utmip_pad_open._entry, section ".printk_index", align 4
@utmip_pad_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.81, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@utmip_pad_open._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.3, i32 278, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to initialize UTMI-pads reset: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@utmip_pad_open._entry_ptr.74 = internal global ptr @utmip_pad_open._entry.72, section ".printk_index", align 4
@utmip_pad_open._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.3, i32 285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to assert UTMI-pads reset: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@utmip_pad_open._entry_ptr.77 = internal global ptr @utmip_pad_open._entry.75, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@utmip_pad_open._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.71, ptr @.str.3, i32 294, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to deassert UTMI-pads reset: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@utmip_pad_open._entry_ptr.80 = internal global ptr @utmip_pad_open._entry.78, section ".printk_index", align 4
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"utmip_pad_lock\00", [17 x i8] zeroinitializer }, align 32
@tegra_usb_phy_configure_pmc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 1041, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to disable PMC AO: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra_usb_phy_configure_pmc\00", [36 x i8] zeroinitializer }, align 32
@tegra_usb_phy_configure_pmc._entry_ptr = internal global ptr @tegra_usb_phy_configure_pmc._entry, section ".printk_index", align 4
@tegra_usb_phy_configure_pmc._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.3, i32 1050, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable PMC AO: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_usb_phy_configure_pmc._entry_ptr.86 = internal global ptr @tegra_usb_phy_configure_pmc._entry.84, section ".printk_index", align 4
@ulpi_phy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 813, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ULPI write failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ulpi_phy_power_on\00", [46 x i8] zeroinitializer }, align 32
@ulpi_phy_power_on._entry_ptr = internal global ptr @ulpi_phy_power_on._entry, section ".printk_index", align 4
@ulpi_phy_power_on._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 819, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ulpi_phy_power_on._entry_ptr.90 = internal global ptr @ulpi_phy_power_on._entry.89, section ".printk_index", align 4
@utmip_pad_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@utmi_phy_clk_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 480, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Timeout waiting for PHY to stabilize on enable\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"utmi_phy_clk_enable\00", [44 x i8] zeroinitializer }, align 32
@utmi_phy_clk_enable._entry_ptr = internal global ptr @utmi_phy_clk_enable._entry, section ".printk_index", align 4
@utmip_pad_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.93, ptr @.str.3, i32 310, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"utmip_pad_close\00", [16 x i8] zeroinitializer }, align 32
@utmip_pad_close._entry_ptr = internal global ptr @utmip_pad_close._entry, section ".printk_index", align 4
@utmip_pad_close._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.93, ptr @.str.3, i32 317, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@utmip_pad_close._entry_ptr.95 = internal global ptr @utmip_pad_close._entry.94, section ".printk_index", align 4
@ulpi_phy_power_off.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@utmi_phy_clk_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.3, i32 446, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Timeout waiting for PHY to stabilize on disable\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"utmi_phy_clk_disable\00", [43 x i8] zeroinitializer }, align 32
@utmi_phy_clk_disable._entry_ptr = internal global ptr @utmi_phy_clk_disable._entry, section ".printk_index", align 4
@utmip_pad_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.3, i32 380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"UTMIP pad already powered off\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"utmip_pad_power_off\00", [44 x i8] zeroinitializer }, align 32
@utmip_pad_power_off._entry_ptr = internal global ptr @utmip_pad_power_off._entry, section ".printk_index", align 4
@tegra_usb_phy_set_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.3, i32 975, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request interrupt: %d\00", [32 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_usb_phy_set_wakeup\00", [39 x i8] zeroinitializer }, align 32
@tegra_usb_phy_set_wakeup._entry_ptr = internal global ptr @tegra_usb_phy_set_wakeup._entry, section ".printk_index", align 4
@tegra30_soc_config = internal constant { %struct.tegra_phy_soc_config, [27 x i8] } { %struct.tegra_phy_soc_config { i8 1, i8 1, i8 1, i8 1, i8 1 }, [27 x i8] zeroinitializer }, align 32
@tegra20_soc_config = internal constant { %struct.tegra_phy_soc_config, [27 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.103 = internal global [6 x i64] [i64 4, i64 32, i64 12000000, i64 13000000, i64 19200000, i64 26000000]
@___asan_gen_.104 = private unnamed_addr constant [21 x i8] c"tegra_usb_phy_driver\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1492, i32 31 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1496, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant [23 x i8] c"tegra_usb_phy_id_table\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1333, i32 34 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1360, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1371, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1376, i32 29 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1378, i32 27 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1384, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1389, i32 51 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1393, i32 46 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1396, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1402, i32 34 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1413, i32 49 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1416, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1425, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1435, i32 45 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1438, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1444, i32 11 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1446, i32 11 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1449, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1458, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1467, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1285, i32 55 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1291, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1308, i32 51 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1191, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1202, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1213, i32 30 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1218, i32 30 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1223, i32 30 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1228, i32 30 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1233, i32 30 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1238, i32 30 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1244, i32 31 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1249, i32 31 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1254, i32 31 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1261, i32 22 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1264, i32 31 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1171, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [17 x i8] c"tegra_freq_table\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 181, i32 37 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1082, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1090, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 268, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant [15 x i8] c"utmip_pad_lock\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 277, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 284, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 293, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 169, i32 8 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1041, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1050, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 813, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 819, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant [16 x i8] c"utmip_pad_count\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 170, i32 21 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 479, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 309, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 316, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 445, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 380, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.410 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 974, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant [19 x i8] c"tegra30_soc_config\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1325, i32 42 }
@___asan_gen_.416 = private unnamed_addr constant [19 x i8] c"tegra20_soc_config\00", align 1
@___asan_gen_.417 = private constant [35 x i8] c"../drivers/usb/phy/phy-tegra-usb.c\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 1317, i32 42 }
@llvm.compiler.used = appending global [145 x ptr] [ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_tegra_usb_phy_driver_exit, ptr @__initcall__kmod_phy_tegra_usb__293_1500_tegra_usb_phy_driver_init6, ptr @__ksymtab_tegra_ehci_phy_restore_end, ptr @__ksymtab_tegra_ehci_phy_restore_start, ptr @__ksymtab_tegra_usb_phy_postresume, ptr @__ksymtab_tegra_usb_phy_preresume, ptr @read_utmi_param._entry, ptr @read_utmi_param._entry_ptr, ptr @tegra_usb_phy_configure_pmc._entry, ptr @tegra_usb_phy_configure_pmc._entry.84, ptr @tegra_usb_phy_configure_pmc._entry_ptr, ptr @tegra_usb_phy_configure_pmc._entry_ptr.86, ptr @tegra_usb_phy_driver_exit, ptr @tegra_usb_phy_init._entry, ptr @tegra_usb_phy_init._entry.67, ptr @tegra_usb_phy_init._entry_ptr, ptr @tegra_usb_phy_init._entry_ptr.69, ptr @tegra_usb_phy_parse_pmc._entry, ptr @tegra_usb_phy_parse_pmc._entry_ptr, ptr @tegra_usb_phy_probe._entry, ptr @tegra_usb_phy_probe._entry.11, ptr @tegra_usb_phy_probe._entry.16, ptr @tegra_usb_phy_probe._entry.21, ptr @tegra_usb_phy_probe._entry.24, ptr @tegra_usb_phy_probe._entry.28, ptr @tegra_usb_phy_probe._entry.33, ptr @tegra_usb_phy_probe._entry.36, ptr @tegra_usb_phy_probe._entry.39, ptr @tegra_usb_phy_probe._entry.6, ptr @tegra_usb_phy_probe._entry_ptr, ptr @tegra_usb_phy_probe._entry_ptr.13, ptr @tegra_usb_phy_probe._entry_ptr.18, ptr @tegra_usb_phy_probe._entry_ptr.23, ptr @tegra_usb_phy_probe._entry_ptr.26, ptr @tegra_usb_phy_probe._entry_ptr.30, ptr @tegra_usb_phy_probe._entry_ptr.35, ptr @tegra_usb_phy_probe._entry_ptr.38, ptr @tegra_usb_phy_probe._entry_ptr.41, ptr @tegra_usb_phy_probe._entry_ptr.8, ptr @tegra_usb_phy_set_wakeup._entry, ptr @tegra_usb_phy_set_wakeup._entry_ptr, ptr @ulpi_phy_power_on._entry, ptr @ulpi_phy_power_on._entry.89, ptr @ulpi_phy_power_on._entry_ptr, ptr @ulpi_phy_power_on._entry_ptr.90, ptr @utmi_phy_clk_disable._entry, ptr @utmi_phy_clk_disable._entry_ptr, ptr @utmi_phy_clk_enable._entry, ptr @utmi_phy_clk_enable._entry_ptr, ptr @utmi_phy_probe._entry, ptr @utmi_phy_probe._entry.49, ptr @utmi_phy_probe._entry_ptr, ptr @utmi_phy_probe._entry_ptr.51, ptr @utmip_pad_close._entry, ptr @utmip_pad_close._entry.94, ptr @utmip_pad_close._entry_ptr, ptr @utmip_pad_close._entry_ptr.95, ptr @utmip_pad_open._entry, ptr @utmip_pad_open._entry.72, ptr @utmip_pad_open._entry.75, ptr @utmip_pad_open._entry.78, ptr @utmip_pad_open._entry_ptr, ptr @utmip_pad_open._entry_ptr.74, ptr @utmip_pad_open._entry_ptr.77, ptr @utmip_pad_open._entry_ptr.80, ptr @utmip_pad_power_off._entry, ptr @utmip_pad_power_off._entry_ptr, ptr @tegra_usb_phy_driver, ptr @.str, ptr @tegra_usb_phy_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @tegra_freq_table, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @utmip_pad_lock, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @utmip_pad_count, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @tegra30_soc_config, ptr @tegra20_soc_config], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_phy_id_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_phy_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_phy_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_phy_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_phy_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_phy_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_phy_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_phy_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_phy_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_phy_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_phy_parse_pmc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @utmi_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @utmi_phy_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_utmi_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_freq_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_phy_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @utmip_pad_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @utmip_pad_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @utmip_pad_open._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @utmip_pad_open._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @utmip_pad_open._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_phy_configure_pmc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_phy_configure_pmc._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulpi_phy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulpi_phy_power_on._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @utmip_pad_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @utmi_phy_clk_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @utmip_pad_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @utmip_pad_close._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @utmi_phy_clk_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @utmip_pad_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_phy_set_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_soc_config to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_soc_config to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_usb_phy_preresume(ptr nocapture noundef readonly %u_phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_ulpi_phy = getelementptr i8, ptr %u_phy, i32 261
  %0 = ptrtoint ptr %is_ulpi_phy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_ulpi_phy, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i = getelementptr i8, ptr %u_phy, i32 -44
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %3, i32 2080
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #6, !srcloc !224
  %5 = or i32 %4, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %5) #6, !srcloc !225
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_usb_phy_postresume(ptr nocapture noundef readonly %u_phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_ulpi_phy = getelementptr i8, ptr %u_phy, i32 261
  %0 = ptrtoint ptr %is_ulpi_phy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_ulpi_phy, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i = getelementptr i8, ptr %u_phy, i32 -44
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %3, i32 2080
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #6, !srcloc !224
  %5 = and i32 %4, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %5) #6, !srcloc !225
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_ehci_phy_restore_start(ptr nocapture noundef readonly %u_phy, i32 noundef %port_speed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_ulpi_phy = getelementptr i8, ptr %u_phy, i32 261
  %0 = ptrtoint ptr %is_ulpi_phy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_ulpi_phy, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i = getelementptr i8, ptr %u_phy, i32 -44
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %3, i32 2084
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #6, !srcloc !224
  %5 = and i32 %4, -121
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %port_speed)
  %cmp.i = icmp eq i32 %port_speed, 1
  %val.0.v.i = select i1 %cmp.i, i32 1879048192, i32 2013265920
  %val.0.i = or i32 %6, %val.0.v.i
  %7 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %7) #6, !srcloc !225
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 10, i32 noundef 2) #6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #6, !srcloc !224
  %9 = or i32 %8, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %9) #6, !srcloc !225
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_ehci_phy_restore_end(ptr nocapture noundef readonly %u_phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_ulpi_phy = getelementptr i8, ptr %u_phy, i32 261
  %0 = ptrtoint ptr %is_ulpi_phy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_ulpi_phy, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i = getelementptr i8, ptr %u_phy, i32 -44
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %3, i32 2084
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #6, !srcloc !224
  %5 = and i32 %4, -5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %5) #6, !srcloc !225
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_usb_phy_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_usb_phy_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_usb_phy_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_usb_phy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_usb_phy_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %value.i142.i = alloca i32, align 4
  %value.i133.i = alloca i32, align 4
  %value.i124.i = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 332, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %soc_config = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 12
  %2 = ptrtoint ptr %soc_config to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %soc_config, align 4
  %call4 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #6
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call4, ptr %call.i, align 4
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call5, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  %call12 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %5, i32 noundef %add.i) #6
  %regs = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %regs, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end9
  %call.i228 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i228, null
  %is_legacy_phy = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 15
  %frombool = zext i1 %tobool.i to i8
  %9 = ptrtoint ptr %is_legacy_phy to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %is_legacy_phy, align 4
  %call22 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end28.thread, label %if.end28

if.end28.thread:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %10 = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 10
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %10, align 4
  br label %if.end35

if.end28:                                         ; preds = %if.end20
  %call26 = tail call i32 @usb_get_dr_mode(ptr noundef %dev) #6
  %12 = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 10
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call26, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp eq i32 %call26, 0
  br i1 %cmp, label %do.end33, label %if.end28.if.end35_crit_edge

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end35:                                         ; preds = %if.end28.if.end35_crit_edge, %if.end28.thread
  %call37 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.14) #6
  %vbus = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call37, ptr %vbus, align 4
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call37 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  %call45 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #6
  %pll_u = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %pll_u to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call45, ptr %pll_u, align 4
  %cmp.i.i.not = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %do.end52, label %if.end54

do.end52:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call45 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %17) #9
  br label %cleanup

if.end54:                                         ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %18 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %20, ptr noundef nonnull @.str.42, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %args.i) #6
  %21 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i.i, label %tegra_usb_phy_parse_pmc.exit [
    i32 0, label %if.end8.i
    i32 -2, label %do.body.i
  ]

do.body.i:                                        ; preds = %if.end54
  %.b43.i = load i1, ptr @tegra_usb_phy_parse_pmc.__print_once, align 1
  br i1 %.b43.i, label %do.body.i.tegra_usb_phy_parse_pmc.exit.thread247_crit_edge, label %if.then3.i

do.body.i.tegra_usb_phy_parse_pmc.exit.thread247_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_usb_phy_parse_pmc.exit.thread247

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @tegra_usb_phy_parse_pmc.__print_once, align 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.43) #9
  br label %tegra_usb_phy_parse_pmc.exit.thread247

if.end8.i:                                        ; preds = %if.end54
  %22 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %args.i, align 4
  %call9.i = call ptr @of_find_device_by_node(ptr noundef %23) #6
  %24 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %args.i, align 4
  call void @of_node_put(ptr noundef %25) #6
  %tobool11.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool11.not.i, label %if.end8.i.tegra_usb_phy_parse_pmc.exit.thread_crit_edge, label %if.end13.i

if.end8.i.tegra_usb_phy_parse_pmc.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_usb_phy_parse_pmc.exit.thread

if.end13.i:                                       ; preds = %if.end8.i
  %dev14.i = getelementptr inbounds %struct.platform_device, ptr %call9.i, i32 0, i32 3
  %call.i44.i = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @tegra_usb_phy_put_pmc_device, ptr noundef %dev14.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %tobool.not.i.i = icmp eq i32 %call.i44.i, 0
  br i1 %tobool.not.i.i, label %if.end18.i, label %devm_add_action_or_reset.exit.i

devm_add_action_or_reset.exit.i:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @put_device(ptr noundef %dev14.i) #6
  br label %tegra_usb_phy_parse_pmc.exit.thread

if.end18.i:                                       ; preds = %if.end13.i
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %call9.i, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool20.not.i = icmp eq ptr %27, null
  br i1 %tobool20.not.i, label %if.end18.i.tegra_usb_phy_parse_pmc.exit.thread_crit_edge, label %if.end22.i

if.end18.i.tegra_usb_phy_parse_pmc.exit.thread_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_usb_phy_parse_pmc.exit.thread

if.end22.i:                                       ; preds = %if.end18.i
  %call24.i = call ptr @dev_get_regmap(ptr noundef %dev14.i, ptr noundef nonnull @.str.46) #6
  %pmc_regmap.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 9
  %28 = ptrtoint ptr %pmc_regmap.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call24.i, ptr %pmc_regmap.i, align 4
  %tobool26.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool26.not.i, label %if.end22.i.tegra_usb_phy_parse_pmc.exit.thread_crit_edge, label %if.end28.i

if.end22.i.tegra_usb_phy_parse_pmc.exit.thread_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_usb_phy_parse_pmc.exit.thread

if.end28.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %args29.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2
  %29 = ptrtoint ptr %args29.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %args29.i, align 4
  %instance.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 1
  %31 = ptrtoint ptr %instance.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %instance.i, align 4
  br label %tegra_usb_phy_parse_pmc.exit.thread247

tegra_usb_phy_parse_pmc.exit.thread:              ; preds = %if.end22.i.tegra_usb_phy_parse_pmc.exit.thread_crit_edge, %if.end18.i.tegra_usb_phy_parse_pmc.exit.thread_crit_edge, %devm_add_action_or_reset.exit.i, %if.end8.i.tegra_usb_phy_parse_pmc.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end22.i.tegra_usb_phy_parse_pmc.exit.thread_crit_edge ], [ -517, %if.end18.i.tegra_usb_phy_parse_pmc.exit.thread_crit_edge ], [ %call.i44.i, %devm_add_action_or_reset.exit.i ], [ -19, %if.end8.i.tegra_usb_phy_parse_pmc.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  br label %if.then58

tegra_usb_phy_parse_pmc.exit.thread247:           ; preds = %if.end28.i, %if.then3.i, %do.body.i.tegra_usb_phy_parse_pmc.exit.thread247_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %call62 = call i32 @of_usb_get_phy_mode(ptr noundef %1) #6
  %32 = zext i32 %call62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %call62, label %do.end123 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb88
  ]

tegra_usb_phy_parse_pmc.exit:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  br label %if.then58

if.then58:                                        ; preds = %tegra_usb_phy_parse_pmc.exit, %tegra_usb_phy_parse_pmc.exit.thread
  %retval.0.i245 = phi i32 [ %retval.0.i.ph, %tegra_usb_phy_parse_pmc.exit.thread ], [ %call.i.i, %tegra_usb_phy_parse_pmc.exit ]
  %call60 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %retval.0.i245, ptr noundef nonnull @.str.19) #6
  br label %cleanup

sw.bb:                                            ; preds = %tegra_usb_phy_parse_pmc.exit.thread247
  %is_ulpi_phy.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 16
  %33 = ptrtoint ptr %is_ulpi_phy.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %is_ulpi_phy.i, align 1
  %call.i229 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #6
  %tobool.not.i = icmp eq ptr %call.i229, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %34 = ptrtoint ptr %call.i229 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call.i229, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i229, i32 0, i32 1
  %36 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %35
  %add.i.i = add i32 %sub.i.i, %37
  %call3.i = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %35, i32 noundef %add.i.i) #6
  %pad_regs.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 4
  %38 = ptrtoint ptr %pad_regs.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call3.i, ptr %pad_regs.i, align 4
  %tobool5.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not.i, label %do.end9.i, label %if.end11.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #9
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i
  %call.i.i230 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 11, i32 noundef 3520) #6
  %config14.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 11
  %39 = ptrtoint ptr %config14.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i230, ptr %config14.i, align 4
  %tobool16.not.i = icmp eq ptr %call.i.i230, null
  br i1 %tobool16.not.i, label %if.end11.i.cleanup_crit_edge, label %if.end18.i232

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18.i232:                                    ; preds = %if.end11.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #6
  %40 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %value.i.i, align 4, !annotation !226
  %41 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %of_node, align 8
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %42, ptr noundef nonnull @.str.52, ptr noundef nonnull %value.i.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i.i231 = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i.i231, label %if.end23.i, label %read_utmi_param.exit.i

read_utmi_param.exit.i:                           ; preds = %if.end18.i232
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.52, i32 noundef %call.i.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #6
  br label %cleanup

if.end23.i:                                       ; preds = %if.end18.i232
  %43 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %value.i.i, align 4
  %conv.i.i = trunc i32 %44 to i8
  %45 = ptrtoint ptr %call.i.i230 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i.i, ptr %call.i.i230, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i124.i) #6
  %46 = ptrtoint ptr %value.i124.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %value.i124.i, align 4, !annotation !226
  %47 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %of_node, align 8
  %call.i.i.i126.i = call i32 @of_property_read_variable_u32_array(ptr noundef %48, ptr noundef nonnull @.str.53, ptr noundef nonnull %value.i124.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i126.i)
  %tobool.not.i127.i = icmp sgt i32 %call.i.i.i126.i, -1
  br i1 %tobool.not.i127.i, label %if.end27.i, label %read_utmi_param.exit132.i

read_utmi_param.exit132.i:                        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.53, i32 noundef %call.i.i.i126.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i124.i) #6
  br label %cleanup

if.end27.i:                                       ; preds = %if.end23.i
  %elastic_limit.i = getelementptr inbounds %struct.tegra_utmip_config, ptr %call.i.i230, i32 0, i32 1
  %49 = ptrtoint ptr %value.i124.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %value.i124.i, align 4
  %conv.i130.i = trunc i32 %50 to i8
  %51 = ptrtoint ptr %elastic_limit.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv.i130.i, ptr %elastic_limit.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i124.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i133.i) #6
  %52 = ptrtoint ptr %value.i133.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %value.i133.i, align 4, !annotation !226
  %53 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %of_node, align 8
  %call.i.i.i135.i = call i32 @of_property_read_variable_u32_array(ptr noundef %54, ptr noundef nonnull @.str.54, ptr noundef nonnull %value.i133.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i135.i)
  %tobool.not.i136.i = icmp sgt i32 %call.i.i.i135.i, -1
  br i1 %tobool.not.i136.i, label %if.end31.i, label %read_utmi_param.exit141.i

read_utmi_param.exit141.i:                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.54, i32 noundef %call.i.i.i135.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i133.i) #6
  br label %cleanup

if.end31.i:                                       ; preds = %if.end27.i
  %idle_wait_delay.i = getelementptr inbounds %struct.tegra_utmip_config, ptr %call.i.i230, i32 0, i32 2
  %55 = ptrtoint ptr %value.i133.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %value.i133.i, align 4
  %conv.i139.i = trunc i32 %56 to i8
  %57 = ptrtoint ptr %idle_wait_delay.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv.i139.i, ptr %idle_wait_delay.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i133.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i142.i) #6
  %58 = ptrtoint ptr %value.i142.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %value.i142.i, align 4, !annotation !226
  %59 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %of_node, align 8
  %call.i.i.i144.i = call i32 @of_property_read_variable_u32_array(ptr noundef %60, ptr noundef nonnull @.str.55, ptr noundef nonnull %value.i142.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i144.i)
  %tobool.not.i145.i = icmp sgt i32 %call.i.i.i144.i, -1
  br i1 %tobool.not.i145.i, label %if.end35.i, label %read_utmi_param.exit150.i

read_utmi_param.exit150.i:                        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.55, i32 noundef %call.i.i.i144.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i142.i) #6
  br label %cleanup

if.end35.i:                                       ; preds = %if.end31.i
  %term_range_adj.i = getelementptr inbounds %struct.tegra_utmip_config, ptr %call.i.i230, i32 0, i32 3
  %61 = ptrtoint ptr %value.i142.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %value.i142.i, align 4
  %conv.i148.i = trunc i32 %62 to i8
  %63 = ptrtoint ptr %term_range_adj.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv.i148.i, ptr %term_range_adj.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i142.i) #6
  %xcvr_lsfslew.i = getelementptr inbounds %struct.tegra_utmip_config, ptr %call.i.i230, i32 0, i32 6
  %call36.i = call fastcc i32 @read_utmi_param(ptr noundef %pdev, ptr noundef nonnull @.str.56, ptr noundef %xcvr_lsfslew.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end35.i.cleanup_crit_edge

if.end35.i.cleanup_crit_edge:                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39.i:                                       ; preds = %if.end35.i
  %xcvr_lsrslew.i = getelementptr inbounds %struct.tegra_utmip_config, ptr %call.i.i230, i32 0, i32 7
  %call40.i = call fastcc i32 @read_utmi_param(ptr noundef %pdev, ptr noundef nonnull @.str.57, ptr noundef %xcvr_lsrslew.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %if.end39.i.cleanup_crit_edge

if.end39.i.cleanup_crit_edge:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43.i:                                       ; preds = %if.end39.i
  %64 = ptrtoint ptr %soc_config to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %soc_config, align 4
  %requires_extra_tuning_parameters.i = getelementptr inbounds %struct.tegra_phy_soc_config, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %requires_extra_tuning_parameters.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %requires_extra_tuning_parameters.i, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool44.not.i = icmp eq i8 %67, 0
  br i1 %tobool44.not.i, label %if.end43.i.if.end58.i_crit_edge, label %if.then45.i

if.end43.i.if.end58.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.i

if.then45.i:                                      ; preds = %if.end43.i
  %xcvr_hsslew.i = getelementptr inbounds %struct.tegra_utmip_config, ptr %call.i.i230, i32 0, i32 8
  %call46.i = call fastcc i32 @read_utmi_param(ptr noundef %pdev, ptr noundef nonnull @.str.58, ptr noundef %xcvr_hsslew.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %if.then45.i.cleanup_crit_edge

if.then45.i.cleanup_crit_edge:                    ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49.i:                                       ; preds = %if.then45.i
  %hssquelch_level.i = getelementptr inbounds %struct.tegra_utmip_config, ptr %call.i.i230, i32 0, i32 9
  %call50.i = call fastcc i32 @read_utmi_param(ptr noundef %pdev, ptr noundef nonnull @.str.59, ptr noundef %hssquelch_level.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.end53.i, label %if.end49.i.cleanup_crit_edge

if.end49.i.cleanup_crit_edge:                     ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end53.i:                                       ; preds = %if.end49.i
  %hsdiscon_level.i = getelementptr inbounds %struct.tegra_utmip_config, ptr %call.i.i230, i32 0, i32 10
  %call54.i = call fastcc i32 @read_utmi_param(ptr noundef %pdev, ptr noundef nonnull @.str.60, ptr noundef %hsdiscon_level.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.end53.i.if.end58.i_crit_edge, label %if.end53.i.cleanup_crit_edge

if.end53.i.cleanup_crit_edge:                     ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end53.i.if.end58.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end53.i.if.end58.i_crit_edge, %if.end43.i.if.end58.i_crit_edge
  %68 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %of_node, align 8
  %call.i151.i = call ptr @of_find_property(ptr noundef %69, ptr noundef nonnull @.str.61, ptr noundef null) #6
  %tobool.i.i = icmp ne ptr %call.i151.i, null
  %xcvr_setup_use_fuses.i = getelementptr inbounds %struct.tegra_utmip_config, ptr %call.i.i230, i32 0, i32 4
  %frombool.i = zext i1 %tobool.i.i to i8
  %70 = ptrtoint ptr %xcvr_setup_use_fuses.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %frombool.i, ptr %xcvr_setup_use_fuses.i, align 1
  br i1 %tobool.i.i, label %if.end58.i.if.end66_crit_edge, label %if.then63.i

if.end58.i.if.end66_crit_edge:                    ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then63.i:                                      ; preds = %if.end58.i
  %xcvr_setup.i = getelementptr inbounds %struct.tegra_utmip_config, ptr %call.i.i230, i32 0, i32 5
  %call64.i = call fastcc i32 @read_utmi_param(ptr noundef %pdev, ptr noundef nonnull @.str.62, ptr noundef %xcvr_setup.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %if.then63.i.if.end66_crit_edge, label %if.then63.i.cleanup_crit_edge

if.then63.i.cleanup_crit_edge:                    ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then63.i.if.end66_crit_edge:                   ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.end66:                                         ; preds = %if.then63.i.if.end66_crit_edge, %if.end58.i.if.end66_crit_edge
  %call68 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.20) #6
  %pad_clk = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 7
  %71 = ptrtoint ptr %pad_clk to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call68, ptr %pad_clk, align 4
  %cmp.i.i234.not = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i234.not, label %do.end75, label %if.end77

do.end75:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %call68 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %72) #9
  br label %cleanup

if.end77:                                         ; preds = %if.end66
  %call.i236 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #6
  %cmp.i.i237.not = icmp ugt ptr %call.i236, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i237.not, label %do.end85, label %if.end87

do.end85:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %call.i236 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %73) #9
  br label %cleanup

if.end87:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %pad_rst = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 18
  %74 = ptrtoint ptr %pad_rst to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i236, ptr %pad_rst, align 4
  br label %sw.epilog

sw.bb88:                                          ; preds = %tegra_usb_phy_parse_pmc.exit.thread247
  %is_ulpi_phy = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 16
  %75 = ptrtoint ptr %is_ulpi_phy to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %is_ulpi_phy, align 1
  %call90 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.27) #6
  %clk = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 5
  %76 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call90, ptr %clk, align 4
  %cmp.i.i239.not = icmp ugt ptr %call90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i239.not, label %do.end97, label %if.end99

do.end97:                                         ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %call90 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %77) #9
  br label %cleanup

if.end99:                                         ; preds = %sw.bb88
  %call101 = call ptr @devm_gpiod_get_from_of_node(ptr noundef %dev, ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef 7, ptr noundef nonnull @.str.32) #6
  %cmp.i.i241.not = icmp ugt ptr %call101, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i241.not, label %do.end107, label %if.end109

do.end107:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %call101 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %78) #9
  br label %cleanup

if.end109:                                        ; preds = %if.end99
  %reset_gpio = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 17
  %79 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call101, ptr %reset_gpio, align 4
  %call111 = call ptr @devm_otg_ulpi_create(ptr noundef %dev, ptr noundef nonnull @ulpi_viewport_access_ops, i32 noundef 0) #6
  %tobool112.not = icmp eq ptr %call111, null
  br i1 %tobool112.not, label %do.end116, label %if.end118

do.end116:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #9
  br label %cleanup

if.end118:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  %ulpi = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 13
  %80 = ptrtoint ptr %ulpi to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call111, ptr %ulpi, align 4
  %81 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %82, i32 368
  %io_priv = getelementptr inbounds %struct.usb_phy, ptr %call111, i32 0, i32 8
  %83 = ptrtoint ptr %io_priv to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %add.ptr, ptr %io_priv, align 4
  br label %sw.epilog

do.end123:                                        ; preds = %tegra_usb_phy_parse_pmc.exit.thread247
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %call62) #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end118, %if.end87
  %u_phy = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 14
  %84 = ptrtoint ptr %u_phy to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %dev, ptr %u_phy, align 4
  %init = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 14, i32 22
  %85 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @tegra_usb_phy_init, ptr %init, align 4
  %shutdown = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 14, i32 23
  %86 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @tegra_usb_phy_shutdown, ptr %shutdown, align 4
  %set_wakeup = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 14, i32 27
  %87 = ptrtoint ptr %set_wakeup to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @tegra_usb_phy_set_wakeup, ptr %set_wakeup, align 4
  %set_suspend = getelementptr inbounds %struct.tegra_usb_phy, ptr %call.i, i32 0, i32 14, i32 26
  %88 = ptrtoint ptr %set_suspend to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @tegra_usb_phy_set_suspend, ptr %set_suspend, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %89 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call132 = call i32 @usb_add_phy_dev(ptr noundef %u_phy) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end123, %do.end116, %do.end107, %do.end97, %do.end85, %do.end75, %if.then63.i.cleanup_crit_edge, %if.end53.i.cleanup_crit_edge, %if.end49.i.cleanup_crit_edge, %if.then45.i.cleanup_crit_edge, %if.end39.i.cleanup_crit_edge, %if.end35.i.cleanup_crit_edge, %read_utmi_param.exit150.i, %read_utmi_param.exit141.i, %read_utmi_param.exit132.i, %read_utmi_param.exit.i, %if.end11.i.cleanup_crit_edge, %do.end9.i, %do.end.i, %if.then58, %do.end52, %if.then40, %do.end33, %do.end18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end33 ], [ %15, %if.then40 ], [ %17, %do.end52 ], [ %retval.0.i245, %if.then58 ], [ -22, %do.end123 ], [ %77, %do.end97 ], [ %78, %do.end107 ], [ %call132, %sw.epilog ], [ -12, %do.end116 ], [ %72, %do.end75 ], [ %73, %do.end85 ], [ -12, %do.end18 ], [ -6, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call64.i, %if.then63.i.cleanup_crit_edge ], [ %call54.i, %if.end53.i.cleanup_crit_edge ], [ %call50.i, %if.end49.i.cleanup_crit_edge ], [ %call46.i, %if.then45.i.cleanup_crit_edge ], [ %call40.i, %if.end39.i.cleanup_crit_edge ], [ %call36.i, %if.end35.i.cleanup_crit_edge ], [ %call.i.i.i144.i, %read_utmi_param.exit150.i ], [ %call.i.i.i135.i, %read_utmi_param.exit141.i ], [ %call.i.i.i126.i, %read_utmi_param.exit132.i ], [ %call.i.i.i.i, %read_utmi_param.exit.i ], [ -12, %if.end11.i.cleanup_crit_edge ], [ -6, %do.end.i ], [ -12, %do.end9.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_usb_phy_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %u_phy = getelementptr inbounds %struct.tegra_usb_phy, ptr %1, i32 0, i32 14
  tail call void @usb_remove_phy(ptr noundef %u_phy) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_get_phy_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_from_of_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_otg_ulpi_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_usb_phy_init(ptr nocapture noundef %u_phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %u_phy, i32 -56
  %freq = getelementptr i8, ptr %u_phy, i32 -48
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %freq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !227

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1067, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end22:                                         ; preds = %entry
  %pll_u = getelementptr i8, ptr %u_phy, i32 -32
  %2 = ptrtoint ptr %pll_u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_u, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end22
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end26, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %cleanup

if.end26:                                         ; preds = %if.end.i
  %4 = ptrtoint ptr %pll_u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll_u, align 4
  %call28 = tail call ptr @clk_get_parent(ptr noundef %5) #6
  %call29 = tail call i32 @clk_get_rate(ptr noundef %call28) #6
  %6 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %call29, label %for.end [
    i32 12000000, label %if.end26.for.end.thread_crit_edge
    i32 13000000, label %for.end.thread.fold.split
    i32 19200000, label %for.end.thread.fold.split127
    i32 26000000, label %for.end.thread.fold.split128
  ]

if.end26.for.end.thread_crit_edge:                ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end.thread.fold.split:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end.thread.fold.split127:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end.thread.fold.split128:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.thread.fold.split128, %for.end.thread.fold.split127, %for.end.thread.fold.split, %if.end26.for.end.thread_crit_edge
  %arrayidx.lcssa = phi ptr [ @tegra_freq_table, %if.end26.for.end.thread_crit_edge ], [ getelementptr inbounds ([4 x %struct.tegra_xtal_freq], ptr @tegra_freq_table, i32 0, i32 1), %for.end.thread.fold.split ], [ getelementptr inbounds ([4 x %struct.tegra_xtal_freq], ptr @tegra_freq_table, i32 0, i32 2), %for.end.thread.fold.split127 ], [ getelementptr inbounds ([4 x %struct.tegra_xtal_freq], ptr @tegra_freq_table, i32 0, i32 3), %for.end.thread.fold.split128 ]
  %7 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx.lcssa, ptr %freq, align 4
  br label %if.end43

for.end:                                          ; preds = %if.end26
  %8 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load ptr, ptr %freq, align 4
  %tobool37.not = icmp eq ptr %.pr, null
  br i1 %tobool37.not, label %do.end41, label %for.end.if.end43_crit_edge

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

do.end41:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %u_phy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %u_phy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.65, i32 noundef %call29) #9
  br label %disable_clk

if.end43:                                         ; preds = %for.end.if.end43_crit_edge, %for.end.thread
  %vbus = getelementptr i8, ptr %u_phy, i32 -24
  %11 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vbus, align 4
  %call44 = tail call i32 @regulator_enable(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end52, label %do.end49

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %u_phy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %u_phy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.68, i32 noundef %call44) #9
  br label %disable_clk

if.end52:                                         ; preds = %if.end43
  %is_ulpi_phy = getelementptr i8, ptr %u_phy, i32 261
  %15 = ptrtoint ptr %is_ulpi_phy to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_ulpi_phy, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool53.not = icmp eq i8 %16, 0
  br i1 %tobool53.not, label %if.then54, label %if.end52.if.end59_crit_edge

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then54:                                        ; preds = %if.end52
  %pad_clk.i = getelementptr i8, ptr %u_phy, i32 -28
  %17 = ptrtoint ptr %pad_clk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pad_clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then54.utmip_pad_open.exit.thread_crit_edge

if.then54.utmip_pad_open.exit.thread_crit_edge:   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %utmip_pad_open.exit.thread

if.end.i.i:                                       ; preds = %if.then54
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i110, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %18) #6
  br label %utmip_pad_open.exit.thread

utmip_pad_open.exit.thread:                       ; preds = %if.then3.i.i, %if.then54.utmip_pad_open.exit.thread_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.then54.utmip_pad_open.exit.thread_crit_edge ]
  %19 = ptrtoint ptr %u_phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %u_phy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.70, i32 noundef %retval.0.i.ph.i) #9
  br label %disable_vbus

if.end.i110:                                      ; preds = %if.end.i.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @utmip_pad_lock) #6
  %pad_rst.i = getelementptr i8, ptr %u_phy, i32 268
  %21 = ptrtoint ptr %pad_rst.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pad_rst.i, align 4
  %call1.i108 = tail call i32 @reset_control_deassert(ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i108)
  %tobool2.not.i109 = icmp eq i32 %call1.i108, 0
  br i1 %tobool2.not.i109, label %if.end9.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %u_phy to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %u_phy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.73, i32 noundef %call1.i108) #9
  br label %utmip_pad_open.exit

if.end9.i:                                        ; preds = %if.end.i110
  %25 = ptrtoint ptr %pad_rst.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pad_rst.i, align 4
  %call11.i = tail call i32 @reset_control_assert(ptr noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end19.i, label %do.end16.i

do.end16.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %u_phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %u_phy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.76, i32 noundef %call11.i) #9
  br label %utmip_pad_open.exit

if.end19.i:                                       ; preds = %if.end9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #6
  %30 = ptrtoint ptr %pad_rst.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pad_rst.i, align 4
  %call21.i = tail call i32 @reset_control_deassert(ptr noundef %31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end19.i.utmip_pad_open.exit_crit_edge, label %do.end26.i

if.end19.i.utmip_pad_open.exit_crit_edge:         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utmip_pad_open.exit

do.end26.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %u_phy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %u_phy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.79, i32 noundef %call21.i) #9
  br label %utmip_pad_open.exit

utmip_pad_open.exit:                              ; preds = %do.end26.i, %if.end19.i.utmip_pad_open.exit_crit_edge, %do.end16.i, %do.end6.i
  %ret.0.i = phi i32 [ %call1.i108, %do.end6.i ], [ %call11.i, %do.end16.i ], [ %call21.i, %do.end26.i ], [ 0, %if.end19.i.utmip_pad_open.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @utmip_pad_lock) #6
  %34 = ptrtoint ptr %pad_clk.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pad_clk.i, align 4
  tail call void @clk_disable(ptr noundef %35) #6
  tail call void @clk_unprepare(ptr noundef %35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool56.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool56.not, label %utmip_pad_open.exit.if.end59_crit_edge, label %utmip_pad_open.exit.disable_vbus_crit_edge

utmip_pad_open.exit.disable_vbus_crit_edge:       ; preds = %utmip_pad_open.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_vbus

utmip_pad_open.exit.if.end59_crit_edge:           ; preds = %utmip_pad_open.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.end59:                                         ; preds = %utmip_pad_open.exit.if.end59_crit_edge, %if.end52.if.end59_crit_edge
  %pmc_regmap.i = getelementptr i8, ptr %u_phy, i32 -20
  %36 = ptrtoint ptr %pmc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pmc_regmap.i, align 4
  %tobool.not.i112 = icmp eq ptr %37, null
  br i1 %tobool.not.i112, label %if.end59.if.end63_crit_edge, label %if.end.i113

if.end59.if.end63_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.end.i113:                                      ; preds = %if.end59
  %soc_config.i = getelementptr i8, ptr %u_phy, i32 -8
  %38 = ptrtoint ptr %soc_config.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %soc_config.i, align 4
  %requires_pmc_ao_power_up.i = getelementptr inbounds %struct.tegra_phy_soc_config, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %requires_pmc_ao_power_up.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %requires_pmc_ao_power_up.i, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool1.not.i = icmp eq i8 %41, 0
  br i1 %tobool1.not.i, label %if.end.i113.if.end63_crit_edge, label %if.end3.i

if.end.i113.if.end63_crit_edge:                   ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.end3.i:                                        ; preds = %if.end.i113
  %mode.i = getelementptr i8, ptr %u_phy, i32 -16
  %42 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp.not.i = icmp eq i32 %43, 1
  br i1 %cmp.not.i, label %if.end3.i.if.end13.i_crit_edge, label %if.end5.i

if.end3.i.if.end13.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.end5.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %instance.i = getelementptr i8, ptr %u_phy, i32 -52
  %44 = ptrtoint ptr %instance.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %instance.i, align 4
  %mul.i = shl i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp7.i = icmp eq i32 %43, 3
  %spec.select.v = select i1 %cmp7.i, i32 12, i32 4
  %spec.select = shl i32 %spec.select.v, %mul.i
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end5.i, %if.end3.i.if.end13.i_crit_edge
  %val.1.i = phi i32 [ 0, %if.end3.i.if.end13.i_crit_edge ], [ %spec.select, %if.end5.i ]
  %call.i.i114 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %37, i32 noundef 240, i32 noundef %val.1.i, i32 noundef %val.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i114)
  %tobool15.not.i = icmp eq i32 %call.i.i114, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %do.end.i116

do.end.i116:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %u_phy to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %u_phy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.82, i32 noundef %call.i.i114) #9
  br label %close_phy

if.end17.i:                                       ; preds = %if.end13.i
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #6
  %48 = ptrtoint ptr %pmc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pmc_regmap.i, align 4
  %call.i46.i = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 240, i32 noundef %val.1.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %tobool20.not.i = icmp eq i32 %call.i46.i, 0
  br i1 %tobool20.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %u_phy to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %u_phy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.85, i32 noundef %call.i46.i) #9
  br label %close_phy

if.end27.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #6
  br label %if.end63

if.end63:                                         ; preds = %if.end27.i, %if.end.i113.if.end63_crit_edge, %if.end59.if.end63_crit_edge
  %call64 = tail call fastcc i32 @tegra_usb_phy_power_on(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end63.cleanup_crit_edge, label %if.end63.close_phy_crit_edge

if.end63.close_phy_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %close_phy

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

close_phy:                                        ; preds = %if.end63.close_phy_crit_edge, %do.end24.i, %do.end.i116
  %err.0 = phi i32 [ %call64, %if.end63.close_phy_crit_edge ], [ %call.i.i114, %do.end.i116 ], [ %call.i46.i, %do.end24.i ]
  %52 = ptrtoint ptr %is_ulpi_phy to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %is_ulpi_phy, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool69.not = icmp eq i8 %53, 0
  br i1 %tobool69.not, label %if.then70, label %close_phy.disable_vbus_crit_edge

close_phy.disable_vbus_crit_edge:                 ; preds = %close_phy
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_vbus

if.then70:                                        ; preds = %close_phy
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @utmip_pad_close(ptr noundef %add.ptr.i)
  br label %disable_vbus

disable_vbus:                                     ; preds = %if.then70, %close_phy.disable_vbus_crit_edge, %utmip_pad_open.exit.disable_vbus_crit_edge, %utmip_pad_open.exit.thread
  %err.1 = phi i32 [ %err.0, %close_phy.disable_vbus_crit_edge ], [ %err.0, %if.then70 ], [ %ret.0.i, %utmip_pad_open.exit.disable_vbus_crit_edge ], [ %retval.0.i.ph.i, %utmip_pad_open.exit.thread ]
  %54 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vbus, align 4
  %call74 = tail call i32 @regulator_disable(ptr noundef %55) #6
  br label %disable_clk

disable_clk:                                      ; preds = %disable_vbus, %do.end49, %do.end41
  %err.2 = phi i32 [ %call44, %do.end49 ], [ %err.1, %disable_vbus ], [ -22, %do.end41 ]
  %56 = ptrtoint ptr %pll_u to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pll_u, align 4
  tail call void @clk_disable(ptr noundef %57) #6
  tail call void @clk_unprepare(ptr noundef %57) #6
  %58 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %disable_clk, %if.end63.cleanup_crit_edge, %if.then3.i, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %err.2, %disable_clk ], [ 0, %if.end63.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_usb_phy_shutdown(ptr noundef %u_phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %u_phy, i32 -56
  %freq = getelementptr i8, ptr %u_phy, i32 -48
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %freq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !228

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 903, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %u_phy, null
  br i1 %tobool.not.i, label %if.end23.usb_phy_set_wakeup.exit_crit_edge, label %land.lhs.true.i

if.end23.usb_phy_set_wakeup.exit_crit_edge:       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb_phy_set_wakeup.exit

land.lhs.true.i:                                  ; preds = %if.end23
  %set_wakeup.i = getelementptr inbounds %struct.usb_phy, ptr %u_phy, i32 0, i32 27
  %2 = ptrtoint ptr %set_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_wakeup.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.usb_phy_set_wakeup.exit_crit_edge, label %if.then.i

land.lhs.true.i.usb_phy_set_wakeup.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb_phy_set_wakeup.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %3(ptr noundef nonnull %u_phy, i1 noundef zeroext false) #6
  br label %usb_phy_set_wakeup.exit

usb_phy_set_wakeup.exit:                          ; preds = %if.then.i, %land.lhs.true.i.usb_phy_set_wakeup.exit_crit_edge, %if.end23.usb_phy_set_wakeup.exit_crit_edge
  %call25 = tail call fastcc i32 @tegra_usb_phy_power_off(ptr noundef %add.ptr.i)
  %is_ulpi_phy = getelementptr i8, ptr %u_phy, i32 261
  %4 = ptrtoint ptr %is_ulpi_phy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_ulpi_phy, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool26.not = icmp eq i8 %5, 0
  br i1 %tobool26.not, label %if.then27, label %usb_phy_set_wakeup.exit.if.end29_crit_edge

usb_phy_set_wakeup.exit.if.end29_crit_edge:       ; preds = %usb_phy_set_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then27:                                        ; preds = %usb_phy_set_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @utmip_pad_close(ptr noundef %add.ptr.i)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %usb_phy_set_wakeup.exit.if.end29_crit_edge
  %vbus = getelementptr i8, ptr %u_phy, i32 -24
  %6 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vbus, align 4
  %call30 = tail call i32 @regulator_disable(ptr noundef %7) #6
  %pll_u = getelementptr i8, ptr %u_phy, i32 -32
  %8 = ptrtoint ptr %pll_u to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pll_u, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %10 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_usb_phy_set_wakeup(ptr noundef %u_phy, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %u_phy, i32 -56
  %regs = getelementptr i8, ptr %u_phy, i32 -44
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %wakeup_enabled = getelementptr i8, ptr %u_phy, i32 272
  %2 = ptrtoint ptr %wakeup_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wakeup_enabled, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mode = getelementptr i8, ptr %u_phy, i32 -16
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true1

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp sgt i32 %7, 0
  br i1 %cmp2, label %if.then, label %land.lhs.true1.if.end_crit_edge

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @disable_irq(i32 noundef %7) #6
  %add.ptr = getelementptr i8, ptr %1, i32 1032
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !224
  %9 = and i32 %8, -16842753
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #6, !srcloc !225
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  tail call void @enable_irq(i32 noundef %11) #6
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  %call8 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %add.ptr.i) #6
  %14 = ptrtoint ptr %wakeup_enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %wakeup_enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br i1 %enable, label %land.lhs.true11, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

land.lhs.true11:                                  ; preds = %if.end
  %mode12 = getelementptr i8, ptr %u_phy, i32 -16
  %15 = ptrtoint ptr %mode12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp13.not = icmp eq i32 %16, 1
  br i1 %cmp13.not, label %land.lhs.true11.if.end34_crit_edge, label %land.lhs.true14

land.lhs.true11.if.end34_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp16 = icmp sgt i32 %18, 0
  br i1 %cmp16, label %if.then17, label %land.lhs.true14.if.end34_crit_edge

land.lhs.true14.if.end34_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then17:                                        ; preds = %land.lhs.true14
  %19 = ptrtoint ptr %u_phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %u_phy, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then17.dev_name.exit_crit_edge

if.then17.dev_name.exit_crit_edge:                ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then17.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %24, %if.end.i ], [ %22, %if.then17.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %18, ptr noundef nonnull @tegra_usb_phy_isr, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i, ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.then23, label %do.end

if.then23:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i, align 4
  tail call void @disable_irq(i32 noundef %26) #6
  %add.ptr26 = getelementptr i8, ptr %1, i32 1032
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #6, !srcloc !224
  %28 = or i32 %27, 16842752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %28) #6, !srcloc !225
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i, align 4
  tail call void @enable_irq(i32 noundef %30) #6
  br label %if.end34

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %u_phy to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %u_phy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.100, i32 noundef %call.i) #9
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.then23, %land.lhs.true14.if.end34_crit_edge, %land.lhs.true11.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.then23 ], [ 0, %land.lhs.true14.if.end34_crit_edge ], [ 0, %land.lhs.true11.if.end34_crit_edge ], [ 0, %if.end.if.end34_crit_edge ]
  %enable.addr.0.shrunk = phi i1 [ false, %do.end ], [ true, %if.then23 ], [ true, %land.lhs.true14.if.end34_crit_edge ], [ true, %land.lhs.true11.if.end34_crit_edge ], [ false, %if.end.if.end34_crit_edge ]
  %frombool37 = zext i1 %enable.addr.0.shrunk to i8
  %33 = ptrtoint ptr %wakeup_enabled to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool37, ptr %wakeup_enabled, align 4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_usb_phy_set_suspend(ptr nocapture noundef %u_phy, i32 noundef %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %u_phy, i32 -56
  %freq = getelementptr i8, ptr %u_phy, i32 -48
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %freq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !228

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 990, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then24, label %if.end23.if.end26_crit_edge

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then24:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @disable_irq(i32 noundef %3) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end23.if.end26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %suspend)
  %tobool27.not = icmp eq i32 %suspend, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = tail call fastcc i32 @tegra_usb_phy_power_off(ptr noundef %add.ptr.i)
  br label %if.end31

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = tail call fastcc i32 @tegra_usb_phy_power_on(ptr noundef %add.ptr.i)
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then28
  %ret.0 = phi i32 [ %call29, %if.then28 ], [ %call30, %if.else ]
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp33 = icmp sgt i32 %5, 0
  br i1 %cmp33, label %if.then34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @enable_irq(i32 noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end31.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %if.then34 ], [ %ret.0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_usb_phy_put_pmc_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @put_device(ptr noundef %dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_utmi_param(ptr noundef %pdev, ptr noundef %param, ptr nocapture noundef writeonly %dest) unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !226
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef %param, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #6
  %3 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, ptr noundef %param, i32 noundef %3) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 4
  %conv = trunc i32 %5 to i8
  %6 = ptrtoint ptr %dest to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %dest, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_usb_phy_power_on(ptr nocapture noundef %phy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %powered_on = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 21
  %0 = ptrtoint ptr %powered_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %powered_on, align 2, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_ulpi_phy = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 16
  %2 = ptrtoint ptr %is_ulpi_phy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_ulpi_phy, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.else, label %if.end4

if.else:                                          ; preds = %if.end
  %config1.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 11
  %4 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config1.i, align 4
  %regs.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 3
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 1024
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !224
  %9 = or i32 %8, 524288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #6, !srcloc !225
  %is_legacy_phy.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 15
  %10 = ptrtoint ptr %is_legacy_phy.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_legacy_phy.i, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.else.if.end.i_crit_edge, label %if.then.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr4.i = getelementptr i8, ptr %7, i32 1040
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #6, !srcloc !224
  %13 = or i32 %12, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %13) #6, !srcloc !225
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else.if.end.i_crit_edge
  %add.ptr10.i = getelementptr i8, ptr %7, i32 2080
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #6, !srcloc !224
  %15 = or i32 %14, 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %15) #6, !srcloc !225
  %add.ptr16.i = getelementptr i8, ptr %7, i32 2064
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #6, !srcloc !224
  %17 = and i32 %16, -16518913
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  %idle_wait_delay.i = getelementptr inbounds %struct.tegra_utmip_config, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %idle_wait_delay.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %idle_wait_delay.i, align 1
  %21 = and i8 %20, 31
  %and19.i = zext i8 %21 to i32
  %shl.i = shl nuw nsw i32 %and19.i, 15
  %or20.i = or i32 %shl.i, %18
  %elastic_limit.i = getelementptr inbounds %struct.tegra_utmip_config, ptr %5, i32 0, i32 1
  %22 = ptrtoint ptr %elastic_limit.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %elastic_limit.i, align 1
  %24 = and i8 %23, 31
  %and22.i = zext i8 %24 to i32
  %shl23.i = shl nuw nsw i32 %and22.i, 10
  %or24.i = or i32 %or20.i, %shl23.i
  %25 = tail call i32 @llvm.bswap.i32(i32 %or24.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %25) #6, !srcloc !225
  %add.ptr27.i = getelementptr i8, ptr %7, i32 2068
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #6, !srcloc !224
  %27 = and i32 %26, -1040187393
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %5, align 1
  %31 = shl i8 %30, 1
  %32 = and i8 %31, 62
  %shl33.i = zext i8 %32 to i32
  %or34.i = or i32 %28, %shl33.i
  %33 = tail call i32 @llvm.bswap.i32(i32 %or34.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %33) #6, !srcloc !225
  %add.ptr37.i = getelementptr i8, ptr %7, i32 2092
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i) #6, !srcloc !224
  %35 = and i32 %34, 65535
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  %freq.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 2
  %37 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %freq.i, align 4
  %debounce.i = getelementptr inbounds %struct.tegra_xtal_freq, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %debounce.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %debounce.i, align 4
  %conv41.i = zext i16 %40 to i32
  %or44.i = or i32 %36, %conv41.i
  %41 = tail call i32 @llvm.bswap.i32(i32 %or44.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %41) #6, !srcloc !225
  %add.ptr47.i = getelementptr i8, ptr %7, i32 2084
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47.i) #6, !srcloc !224
  %43 = and i32 %42, -16385
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 %43) #6, !srcloc !225
  %soc_config.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 12
  %44 = ptrtoint ptr %soc_config.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %soc_config.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool52.not.i = icmp eq i8 %47, 0
  br i1 %tobool52.not.i, label %if.then53.i, label %if.end.i.if.end86.i_crit_edge

if.end.i.if.end86.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86.i

if.then53.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr55.i = getelementptr i8, ptr %7, i32 2088
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55.i) #6, !srcloc !224
  %49 = and i32 %48, 1056997631
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #6
  %51 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %freq.i, align 4
  %active_delay.i = getelementptr inbounds %struct.tegra_xtal_freq, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %active_delay.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %active_delay.i, align 2
  %55 = and i8 %54, 31
  %and61.i = zext i8 %55 to i32
  %shl62.i = shl nuw nsw i32 %and61.i, 18
  %stable_count.i = getelementptr inbounds %struct.tegra_xtal_freq, ptr %52, i32 0, i32 2
  %56 = ptrtoint ptr %stable_count.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %stable_count.i, align 1
  %conv64.i = zext i8 %57 to i32
  %shl66.i = shl nuw nsw i32 %conv64.i, 6
  %or67.i = or i32 %shl62.i, %shl66.i
  %or68.i = or i32 %or67.i, %50
  %58 = tail call i32 @llvm.bswap.i32(i32 %or68.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i, i32 %58) #6, !srcloc !225
  %add.ptr71.i = getelementptr i8, ptr %7, i32 2052
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71.i) #6, !srcloc !224
  %60 = and i32 %59, 15793927
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #6
  %62 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %freq.i, align 4
  %xtal_freq_count.i = getelementptr inbounds %struct.tegra_xtal_freq, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %xtal_freq_count.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %xtal_freq_count.i, align 1
  %conv76.i = zext i8 %65 to i32
  %enable_delay.i = getelementptr inbounds %struct.tegra_xtal_freq, ptr %63, i32 0, i32 1
  %66 = ptrtoint ptr %enable_delay.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %enable_delay.i, align 4
  %and81.i = zext i8 %67 to i32
  %shl82.i = shl i32 %and81.i, 27
  %or83.i = or i32 %61, %conv76.i
  %or84.i = or i32 %shl82.i, %or83.i
  %68 = tail call i32 @llvm.bswap.i32(i32 %or84.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71.i, i32 %68) #6, !srcloc !225
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then53.i, %if.end.i.if.end86.i_crit_edge
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !224
  %70 = and i32 %69, -67108865
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %70) #6, !srcloc !225
  %mode.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 10
  %71 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp.not.i = icmp eq i32 %72, 1
  br i1 %cmp.not.i, label %if.else.i, label %if.then94.i

if.then94.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #8
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !224
  %74 = and i32 %73, -402653185
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %74) #6, !srcloc !225
  %add.ptr102.i = getelementptr i8, ptr %7, i32 1032
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102.i) #6, !srcloc !224
  %76 = and i32 %75, -33685569
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102.i, i32 %76) #6, !srcloc !225
  %add.ptr109.i = getelementptr i8, ptr %7, i32 1028
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr109.i) #6, !srcloc !224
  %78 = and i32 %77, -4210753
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109.i, i32 %78) #6, !srcloc !225
  %add.ptr116.i = getelementptr i8, ptr %7, i32 2096
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr116.i) #6, !srcloc !224
  %80 = and i32 %79, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr116.i, i32 %80) #6, !srcloc !225
  br label %if.end127.i

if.else.i:                                        ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr122.i = getelementptr i8, ptr %7, i32 2096
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr122.i) #6, !srcloc !224
  %82 = or i32 %81, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122.i, i32 %82) #6, !srcloc !225
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.else.i, %if.then94.i
  %83 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %config1.i, align 4
  %pad_regs.i.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 4
  %85 = ptrtoint ptr %pad_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pad_regs.i.i, align 4
  %pad_clk.i.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 7
  %87 = ptrtoint ptr %pad_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pad_clk.i.i, align 4
  %call.i.i.i = tail call i32 @clk_prepare(ptr noundef %88) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end127.i.cleanup_crit_edge

if.end127.i.cleanup_crit_edge:                    ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end127.i
  %call1.i.i.i = tail call i32 @clk_enable(ptr noundef %88) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i.i, label %utmip_pad_power_on.exit.i

if.end.i.i:                                       ; preds = %if.end.i.i.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @utmip_pad_lock) #6
  %89 = load i32, ptr @utmip_pad_count, align 4
  %inc.i.i = add i32 %89, 1
  store i32 %inc.i.i, ptr @utmip_pad_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp.i.i = icmp eq i32 %89, 0
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.end.i.i.if.end19.i.i_crit_edge

if.end.i.i.if.end19.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %add.ptr.i.i = getelementptr i8, ptr %86, i32 2060
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !224
  %91 = and i32 %90, -786433
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #6
  %93 = ptrtoint ptr %soc_config.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %soc_config.i, align 4
  %requires_extra_tuning_parameters.i.i = getelementptr inbounds %struct.tegra_phy_soc_config, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %requires_extra_tuning_parameters.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %requires_extra_tuning_parameters.i.i, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool4.not.i.i = icmp eq i8 %96, 0
  br i1 %tobool4.not.i.i, label %if.then2.i.i.if.end17.i.i_crit_edge, label %if.then5.i.i

if.then2.i.i.if.end17.i.i_crit_edge:              ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i.i

if.then5.i.i:                                     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and6.i.i = and i32 %92, -16780304
  %hssquelch_level.i.i = getelementptr inbounds %struct.tegra_utmip_config, ptr %84, i32 0, i32 9
  %97 = ptrtoint ptr %hssquelch_level.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %hssquelch_level.i.i, align 1
  %99 = and i8 %98, 3
  %and7.i.i = zext i8 %99 to i32
  %or.i.i = or i32 %and6.i.i, %and7.i.i
  %hsdiscon_level.i.i = getelementptr inbounds %struct.tegra_utmip_config, ptr %84, i32 0, i32 10
  %100 = ptrtoint ptr %hsdiscon_level.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %hsdiscon_level.i.i, align 1
  %conv8.i.i = zext i8 %101 to i32
  %and9.i.i = shl nuw nsw i32 %conv8.i.i, 2
  %shl10.i.i = and i32 %and9.i.i, 12
  %or11.i.i = or i32 %or.i.i, %shl10.i.i
  %102 = shl nuw nsw i32 %conv8.i.i, 22
  %shl15.i.i = and i32 %102, 16777216
  %or16.i.i = or i32 %or11.i.i, %shl15.i.i
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then5.i.i, %if.then2.i.i.if.end17.i.i_crit_edge
  %val.0.i.i = phi i32 [ %or16.i.i, %if.then5.i.i ], [ %92, %if.then2.i.i.if.end17.i.i_crit_edge ]
  %103 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %103) #6, !srcloc !225
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.end17.i.i, %if.end.i.i.if.end19.i.i_crit_edge
  %pad_wakeup.i.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 20
  %104 = ptrtoint ptr %pad_wakeup.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %pad_wakeup.i.i, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool20.not.i.i = icmp eq i8 %105, 0
  br i1 %tobool20.not.i.i, label %if.end19.i.i.if.end131.i_crit_edge, label %if.then21.i.i

if.end19.i.i.if.end131.i_crit_edge:               ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131.i

if.then21.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %pad_wakeup.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %pad_wakeup.i.i, align 1
  %107 = load i32, ptr @utmip_pad_count, align 4
  %dec.i.i = add i32 %107, -1
  store i32 %dec.i.i, ptr @utmip_pad_count, align 4
  br label %if.end131.i

utmip_pad_power_on.exit.i:                        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %88) #6
  br label %cleanup

if.end131.i:                                      ; preds = %if.then21.i.i, %if.end19.i.i.if.end131.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @utmip_pad_lock) #6
  %108 = ptrtoint ptr %pad_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pad_clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %109) #6
  tail call void @clk_unprepare(ptr noundef %109) #6
  %add.ptr133.i = getelementptr i8, ptr %7, i32 2056
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr133.i) #6, !srcloc !224
  %111 = and i32 %110, -256894210
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #6
  %xcvr_setup_use_fuses.i = getelementptr inbounds %struct.tegra_utmip_config, ptr %5, i32 0, i32 4
  %113 = ptrtoint ptr %xcvr_setup_use_fuses.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %xcvr_setup_use_fuses.i, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool137.not.i = icmp eq i8 %114, 0
  br i1 %tobool137.not.i, label %if.then138.i, label %if.end131.i.if.end148.i_crit_edge

if.end131.i.if.end148.i_crit_edge:                ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end148.i

if.then138.i:                                     ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #8
  %xcvr_setup.i = getelementptr inbounds %struct.tegra_utmip_config, ptr %5, i32 0, i32 5
  %115 = ptrtoint ptr %xcvr_setup.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %xcvr_setup.i, align 1
  %conv139.i = zext i8 %116 to i32
  %and140.i = and i32 %conv139.i, 15
  %or142.i = or i32 %and140.i, %112
  %117 = shl nuw nsw i32 %conv139.i, 18
  %shl146.i = and i32 %117, 29360128
  %or147.i = or i32 %or142.i, %shl146.i
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.then138.i, %if.end131.i.if.end148.i_crit_edge
  %val.0.i = phi i32 [ %112, %if.end131.i.if.end148.i_crit_edge ], [ %or147.i, %if.then138.i ]
  %xcvr_lsfslew.i = getelementptr inbounds %struct.tegra_utmip_config, ptr %5, i32 0, i32 6
  %118 = ptrtoint ptr %xcvr_lsfslew.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %xcvr_lsfslew.i, align 1
  %120 = and i8 %119, 3
  %and150.i = zext i8 %120 to i32
  %shl151.i = shl nuw nsw i32 %and150.i, 10
  %or152.i = or i32 %shl151.i, %val.0.i
  %xcvr_lsrslew.i = getelementptr inbounds %struct.tegra_utmip_config, ptr %5, i32 0, i32 7
  %121 = ptrtoint ptr %xcvr_lsrslew.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %xcvr_lsrslew.i, align 1
  %123 = and i8 %122, 3
  %and154.i = zext i8 %123 to i32
  %shl155.i = shl nuw nsw i32 %and154.i, 8
  %or156.i = or i32 %or152.i, %shl155.i
  %124 = ptrtoint ptr %soc_config.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %soc_config.i, align 4
  %requires_extra_tuning_parameters.i = getelementptr inbounds %struct.tegra_phy_soc_config, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %requires_extra_tuning_parameters.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %requires_extra_tuning_parameters.i, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool158.not.i = icmp eq i8 %127, 0
  br i1 %tobool158.not.i, label %if.end148.i.if.end171.i_crit_edge, label %if.then159.i

if.end148.i.if.end171.i_crit_edge:                ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end171.i

if.then159.i:                                     ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #8
  %and160.i = and i32 %or156.i, 33554383
  %xcvr_hsslew.i = getelementptr inbounds %struct.tegra_utmip_config, ptr %5, i32 0, i32 8
  %128 = ptrtoint ptr %xcvr_hsslew.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %xcvr_hsslew.i, align 1
  %conv161.i = zext i8 %129 to i32
  %and162.i = shl nuw nsw i32 %conv161.i, 4
  %shl163.i = and i32 %and162.i, 48
  %or164.i = or i32 %shl163.i, %and160.i
  %130 = shl nuw nsw i32 %conv161.i, 23
  %shl169.i = and i32 %130, 2113929216
  %or170.i = or i32 %or164.i, %shl169.i
  br label %if.end171.i

if.end171.i:                                      ; preds = %if.then159.i, %if.end148.i.if.end171.i_crit_edge
  %val.1.i = phi i32 [ %or170.i, %if.then159.i ], [ %or156.i, %if.end148.i.if.end171.i_crit_edge ]
  %131 = tail call i32 @llvm.bswap.i32(i32 %val.1.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133.i, i32 %131) #6, !srcloc !225
  %add.ptr174.i = getelementptr i8, ptr %7, i32 2104
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr174.i) #6, !srcloc !224
  %133 = and i32 %132, -352336897
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #6
  %term_range_adj.i = getelementptr inbounds %struct.tegra_utmip_config, ptr %5, i32 0, i32 3
  %135 = ptrtoint ptr %term_range_adj.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %term_range_adj.i, align 1
  %137 = and i8 %136, 15
  %and179.i = zext i8 %137 to i32
  %shl180.i = shl nuw nsw i32 %and179.i, 18
  %or181.i = or i32 %shl180.i, %134
  %138 = tail call i32 @llvm.bswap.i32(i32 %or181.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr174.i, i32 %138) #6, !srcloc !225
  %add.ptr184.i = getelementptr i8, ptr %7, i32 2108
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr184.i) #6, !srcloc !224
  %140 = and i32 %139, 134217727
  %141 = or i32 %140, 671088640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr184.i, i32 %141) #6, !srcloc !225
  %add.ptr191.i = getelementptr i8, ptr %7, i32 2100
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr191.i) #6, !srcloc !224
  %143 = ptrtoint ptr %xcvr_setup_use_fuses.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %xcvr_setup_use_fuses.i, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool195.not.i = icmp eq i8 %144, 0
  %145 = and i32 %142, -134217729
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #6
  %masksel.i = select i1 %tobool195.not.i, i32 0, i32 8
  %val.2.i = or i32 %masksel.i, %146
  %147 = tail call i32 @llvm.bswap.i32(i32 %val.2.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr191.i, i32 %147) #6, !srcloc !225
  %148 = ptrtoint ptr %is_legacy_phy.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %is_legacy_phy.i, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool203.not.i = icmp eq i8 %149, 0
  br i1 %tobool203.not.i, label %if.then204.i, label %if.end171.i.if.end211.i_crit_edge

if.end171.i.if.end211.i_crit_edge:                ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end211.i

if.then204.i:                                     ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #8
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !224
  %151 = or i32 %150, 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %151) #6, !srcloc !225
  br label %if.end211.i

if.end211.i:                                      ; preds = %if.then204.i, %if.end171.i.if.end211.i_crit_edge
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !224
  %153 = and i32 %152, -524289
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %153) #6, !srcloc !225
  %154 = ptrtoint ptr %is_legacy_phy.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %is_legacy_phy.i, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool219.not.i = icmp eq i8 %155, 0
  br i1 %tobool219.not.i, label %if.end211.i.if.end234.i_crit_edge, label %if.then220.i

if.end211.i.if.end234.i_crit_edge:                ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end234.i

if.then220.i:                                     ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr222.i = getelementptr i8, ptr %7, i32 1040
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr222.i) #6, !srcloc !224
  %157 = or i32 %156, 100663296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr222.i, i32 %157) #6, !srcloc !225
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !224
  %159 = and i32 %158, -4194305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %159) #6, !srcloc !225
  br label %if.end234.i

if.end234.i:                                      ; preds = %if.then220.i, %if.end211.i.if.end234.i_crit_edge
  %160 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs.i, align 4
  %add.ptr.i405.i = getelementptr i8, ptr %161, i32 1024
  %call.i.i406.i = tail call i64 @ktime_get() #6
  %add.i.i.i.i = add i64 %call.i.i406.i, 6000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 414) #6
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i405.i) #6, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %cmp103.i.i.i = icmp slt i32 %162, 0
  br i1 %cmp103.i.i.i, label %if.end234.i.utmi_phy_clk_enable.exit.i_crit_edge, label %if.end234.i.land.lhs.true.i.i.i_crit_edge

if.end234.i.land.lhs.true.i.i.i_crit_edge:        ; preds = %if.end234.i
  br label %land.lhs.true.i.i.i

if.end234.i.utmi_phy_clk_enable.exit.i_crit_edge: ; preds = %if.end234.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utmi_phy_clk_enable.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then22.i.i.i.land.lhs.true.i.i.i_crit_edge, %if.end234.i.land.lhs.true.i.i.i_crit_edge
  %call13.i.i.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i.i.i, i64 %add.i.i.i.i)
  %cmp3.i.i.i.i = icmp sgt i64 %call13.i.i.i, %add.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %utmi_wait_register.exit.i.i, label %if.then22.i.i.i

if.then22.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #6
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i405.i) #6, !srcloc !224
  %cmp10.i.i.i = icmp slt i32 %163, 0
  br i1 %cmp10.i.i.i, label %if.then22.i.i.i.utmi_phy_clk_enable.exit.i_crit_edge, label %if.then22.i.i.i.land.lhs.true.i.i.i_crit_edge

if.then22.i.i.i.land.lhs.true.i.i.i_crit_edge:    ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.i.i

if.then22.i.i.i.utmi_phy_clk_enable.exit.i_crit_edge: ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utmi_phy_clk_enable.exit.i

utmi_wait_register.exit.i.i:                      ; preds = %land.lhs.true.i.i.i
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i405.i) #6, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %cmp26.i.i.i = icmp slt i32 %164, 0
  br i1 %cmp26.i.i.i, label %utmi_wait_register.exit.i.i.utmi_phy_clk_enable.exit.i_crit_edge, label %if.end.i407.i

utmi_wait_register.exit.i.i.utmi_phy_clk_enable.exit.i_crit_edge: ; preds = %utmi_wait_register.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utmi_phy_clk_enable.exit.i

if.end.i407.i:                                    ; preds = %utmi_wait_register.exit.i.i
  %165 = ptrtoint ptr %is_legacy_phy.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %is_legacy_phy.i, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool.not.i.i = icmp eq i8 %166, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.end.i407.i
  call void @__sanitizer_cov_trace_pc() #8
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i405.i) #6, !srcloc !224
  %168 = or i32 %167, 536870912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i405.i, i32 %168) #6, !srcloc !225
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #6
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i405.i) #6, !srcloc !224
  %170 = and i32 %169, -536870913
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i405.i, i32 %170) #6, !srcloc !225
  br label %if.end10.i.i

if.else.i.i:                                      ; preds = %if.end.i407.i
  %171 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regs.i, align 4
  %173 = ptrtoint ptr %soc_config.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %soc_config.i, align 4
  %has_hostpc.i.i.i = getelementptr inbounds %struct.tegra_phy_soc_config, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %has_hostpc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %has_hostpc.i.i.i, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool.not.i.i408.i = icmp eq i8 %176, 0
  br i1 %tobool.not.i.i408.i, label %if.else4.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i = getelementptr i8, ptr %172, i32 436
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !224
  %178 = and i32 %177, -16385
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %178) #6, !srcloc !225
  br label %if.end10.i.i

if.else4.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr6.i.i.i = getelementptr i8, ptr %172, i32 388
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i.i) #6, !srcloc !224
  %180 = and i32 %179, -704675841
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i.i, i32 %180) #6, !srcloc !225
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.else4.i.i.i, %if.then.i.i.i, %if.then1.i.i
  %call.i28.i.i = tail call i64 @ktime_get() #6
  %add.i.i29.i.i = add i64 %call.i28.i.i, 6000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 414) #6
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i405.i) #6, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %cmp103.i31.i.i = icmp slt i32 %181, 0
  br i1 %cmp103.i31.i.i, label %if.end10.i.i.utmi_phy_clk_enable.exit.i_crit_edge, label %if.end10.i.i.land.lhs.true.i34.i.i_crit_edge

if.end10.i.i.land.lhs.true.i34.i.i_crit_edge:     ; preds = %if.end10.i.i
  br label %land.lhs.true.i34.i.i

if.end10.i.i.utmi_phy_clk_enable.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utmi_phy_clk_enable.exit.i

land.lhs.true.i34.i.i:                            ; preds = %if.then22.i39.i.i.land.lhs.true.i34.i.i_crit_edge, %if.end10.i.i.land.lhs.true.i34.i.i_crit_edge
  %call13.i32.i.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i32.i.i, i64 %add.i.i29.i.i)
  %cmp3.i.i33.i.i = icmp sgt i64 %call13.i32.i.i, %add.i.i29.i.i
  br i1 %cmp3.i.i33.i.i, label %utmi_wait_register.exit43.i.i, label %if.then22.i39.i.i

if.then22.i39.i.i:                                ; preds = %land.lhs.true.i34.i.i
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #6
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i405.i) #6, !srcloc !224
  %cmp10.i38.i.i = icmp slt i32 %182, 0
  br i1 %cmp10.i38.i.i, label %if.then22.i39.i.i.utmi_phy_clk_enable.exit.i_crit_edge, label %if.then22.i39.i.i.land.lhs.true.i34.i.i_crit_edge

if.then22.i39.i.i.land.lhs.true.i34.i.i_crit_edge: ; preds = %if.then22.i39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i34.i.i

if.then22.i39.i.i.utmi_phy_clk_enable.exit.i_crit_edge: ; preds = %if.then22.i39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utmi_phy_clk_enable.exit.i

utmi_wait_register.exit43.i.i:                    ; preds = %land.lhs.true.i34.i.i
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i405.i) #6, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %cmp26.i41.i.i = icmp slt i32 %183, 0
  br i1 %cmp26.i41.i.i, label %utmi_wait_register.exit43.i.i.utmi_phy_clk_enable.exit.i_crit_edge, label %do.end.i.i

utmi_wait_register.exit43.i.i.utmi_phy_clk_enable.exit.i_crit_edge: ; preds = %utmi_wait_register.exit43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utmi_phy_clk_enable.exit.i

do.end.i.i:                                       ; preds = %utmi_wait_register.exit43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %u_phy.i.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 14
  %184 = ptrtoint ptr %u_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %u_phy.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %185, ptr noundef nonnull @.str.91) #9
  br label %utmi_phy_clk_enable.exit.i

utmi_phy_clk_enable.exit.i:                       ; preds = %do.end.i.i, %utmi_wait_register.exit43.i.i.utmi_phy_clk_enable.exit.i_crit_edge, %if.then22.i39.i.i.utmi_phy_clk_enable.exit.i_crit_edge, %if.end10.i.i.utmi_phy_clk_enable.exit.i_crit_edge, %utmi_wait_register.exit.i.i.utmi_phy_clk_enable.exit.i_crit_edge, %if.then22.i.i.i.utmi_phy_clk_enable.exit.i_crit_edge, %if.end234.i.utmi_phy_clk_enable.exit.i_crit_edge
  %186 = ptrtoint ptr %soc_config.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %soc_config.i, align 4
  %requires_usbmode_setup.i = getelementptr inbounds %struct.tegra_phy_soc_config, ptr %187, i32 0, i32 2
  %188 = ptrtoint ptr %requires_usbmode_setup.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %requires_usbmode_setup.i, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool236.not.i = icmp eq i8 %189, 0
  br i1 %tobool236.not.i, label %utmi_phy_clk_enable.exit.i.if.end252.i_crit_edge, label %if.then237.i

utmi_phy_clk_enable.exit.i.if.end252.i_crit_edge: ; preds = %utmi_phy_clk_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end252.i

if.then237.i:                                     ; preds = %utmi_phy_clk_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr239.i = getelementptr i8, ptr %7, i32 504
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr239.i) #6, !srcloc !224
  %191 = and i32 %190, -50331649
  %192 = tail call i32 @llvm.bswap.i32(i32 %191) #6
  %193 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %194)
  %cmp244.i = icmp eq i32 %194, 1
  %val.3.v.i = select i1 %cmp244.i, i32 3, i32 2
  %val.3.i = or i32 %val.3.v.i, %192
  %195 = tail call i32 @llvm.bswap.i32(i32 %val.3.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr239.i, i32 %195) #6, !srcloc !225
  br label %if.end252.i

if.end252.i:                                      ; preds = %if.then237.i, %utmi_phy_clk_enable.exit.i.if.end252.i_crit_edge
  %196 = ptrtoint ptr %is_legacy_phy.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %is_legacy_phy.i, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool254.not.i = icmp eq i8 %197, 0
  br i1 %tobool254.not.i, label %if.then255.i, label %if.end252.i.if.end7_crit_edge

if.end252.i.if.end7_crit_edge:                    ; preds = %if.end252.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then255.i:                                     ; preds = %if.end252.i
  %198 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regs.i, align 4
  %200 = ptrtoint ptr %soc_config.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %soc_config.i, align 4
  %has_hostpc.i.i = getelementptr inbounds %struct.tegra_phy_soc_config, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %has_hostpc.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %has_hostpc.i.i, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool.not.i411.i = icmp eq i8 %203, 0
  br i1 %tobool.not.i411.i, label %if.else.i413.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then255.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i412.i = getelementptr i8, ptr %199, i32 436
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i412.i) #6, !srcloc !224
  %205 = and i32 %204, -225
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i412.i, i32 %205) #6, !srcloc !225
  br label %if.end7

if.else.i413.i:                                   ; preds = %if.then255.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr4.i.i = getelementptr i8, ptr %199, i32 388
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #6, !srcloc !224
  %207 = and i32 %206, -704643265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %207) #6, !srcloc !225
  br label %if.end7

if.end4:                                          ; preds = %if.end
  %call = tail call fastcc i32 @ulpi_phy_power_on(ptr noundef %phy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7:                                          ; preds = %if.end4.if.end7_crit_edge, %if.else.i413.i, %if.then.i.i, %if.end252.i.if.end7_crit_edge
  %208 = ptrtoint ptr %powered_on to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 1, ptr %powered_on, align 2
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge, %utmip_pad_power_on.exit.i, %if.end127.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end4.cleanup_crit_edge ], [ %call.i.i.i, %if.end127.i.cleanup_crit_edge ], [ %call1.i.i.i, %utmip_pad_power_on.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @utmip_pad_close(ptr nocapture noundef readonly %phy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pad_clk = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 7
  %0 = ptrtoint ptr %pad_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pad_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %1) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %u_phy = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 14
  %2 = ptrtoint ptr %u_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u_phy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.70, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %pad_rst = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 18
  %4 = ptrtoint ptr %pad_rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pad_rst, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %do.end6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %u_phy7 = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 14
  %6 = ptrtoint ptr %u_phy7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %u_phy7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.76, i32 noundef %call1) #9
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %if.end.if.end9_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #6
  %9 = ptrtoint ptr %pad_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pad_clk, align 4
  tail call void @clk_disable(ptr noundef %10) #6
  tail call void @clk_unprepare(ptr noundef %10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ulpi_phy_power_on(ptr nocapture noundef readonly %phy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %reset_gpio = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 17
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #6
  %clk = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 5
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #6
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %add.ptr = getelementptr i8, ptr %1, i32 1024
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !224
  %9 = or i32 %8, 524288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #6, !srcloc !225
  %add.ptr5 = getelementptr i8, ptr %1, i32 1060
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !224
  %11 = or i32 %10, 786432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %11) #6, !srcloc !225
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !224
  %13 = or i32 %12, 2097152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #6, !srcloc !225
  %add.ptr16 = getelementptr i8, ptr %1, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #6, !srcloc !225
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 134219784) #6, !srcloc !225
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 150997257) #6, !srcloc !225
  %ulpi = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 13
  %14 = ptrtoint ptr %ulpi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ulpi, align 4
  %tobool.not.i97 = icmp eq ptr %15, null
  br i1 %tobool.not.i97, label %if.end.disable_clk_crit_edge, label %land.lhs.true.i

if.end.disable_clk_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_clk

land.lhs.true.i:                                  ; preds = %if.end
  %io_ops.i = getelementptr inbounds %struct.usb_phy, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %io_ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_ops.i, align 4
  %tobool1.not.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.disable_clk_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.disable_clk_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_clk

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %write.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write.i, align 4
  %tobool4.not.i = icmp eq ptr %19, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.disable_clk_crit_edge, label %usb_phy_io_write.exit

land.lhs.true2.i.disable_clk_crit_edge:           ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_clk

usb_phy_io_write.exit:                            ; preds = %land.lhs.true2.i
  %call.i98 = tail call i32 %19(ptr noundef nonnull %15, i32 noundef 64, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool26.not = icmp eq i32 %call.i98, 0
  br i1 %tobool26.not, label %if.end28, label %usb_phy_io_write.exit.disable_clk_crit_edge

usb_phy_io_write.exit.disable_clk_crit_edge:      ; preds = %usb_phy_io_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_clk

if.end28:                                         ; preds = %usb_phy_io_write.exit
  %20 = ptrtoint ptr %ulpi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ulpi, align 4
  %tobool.not.i100 = icmp eq ptr %21, null
  br i1 %tobool.not.i100, label %if.end28.disable_clk_crit_edge, label %land.lhs.true.i103

if.end28.disable_clk_crit_edge:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_clk

land.lhs.true.i103:                               ; preds = %if.end28
  %io_ops.i101 = getelementptr inbounds %struct.usb_phy, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %io_ops.i101 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_ops.i101, align 4
  %tobool1.not.i102 = icmp eq ptr %23, null
  br i1 %tobool1.not.i102, label %land.lhs.true.i103.disable_clk_crit_edge, label %land.lhs.true2.i106

land.lhs.true.i103.disable_clk_crit_edge:         ; preds = %land.lhs.true.i103
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_clk

land.lhs.true2.i106:                              ; preds = %land.lhs.true.i103
  %write.i104 = getelementptr inbounds %struct.usb_phy_io_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write.i104 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write.i104, align 4
  %tobool4.not.i105 = icmp eq ptr %25, null
  br i1 %tobool4.not.i105, label %land.lhs.true2.i106.disable_clk_crit_edge, label %usb_phy_io_write.exit110

land.lhs.true2.i106.disable_clk_crit_edge:        ; preds = %land.lhs.true2.i106
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_clk

usb_phy_io_write.exit110:                         ; preds = %land.lhs.true2.i106
  %call.i107 = tail call i32 %25(ptr noundef nonnull %21, i32 noundef 128, i32 noundef 11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool31.not = icmp eq i32 %call.i107, 0
  br i1 %tobool31.not, label %if.end38, label %usb_phy_io_write.exit110.disable_clk_crit_edge

usb_phy_io_write.exit110.disable_clk_crit_edge:   ; preds = %usb_phy_io_write.exit110
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_clk

if.end38:                                         ; preds = %usb_phy_io_write.exit110
  call void @__sanitizer_cov_trace_pc() #8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !224
  %27 = or i32 %26, 536870912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %27) #6, !srcloc !225
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #6
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !224
  %29 = and i32 %28, -536870913
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %29) #6, !srcloc !225
  br label %cleanup

disable_clk:                                      ; preds = %usb_phy_io_write.exit110.disable_clk_crit_edge, %land.lhs.true2.i106.disable_clk_crit_edge, %land.lhs.true.i103.disable_clk_crit_edge, %if.end28.disable_clk_crit_edge, %usb_phy_io_write.exit.disable_clk_crit_edge, %land.lhs.true2.i.disable_clk_crit_edge, %land.lhs.true.i.disable_clk_crit_edge, %if.end.disable_clk_crit_edge
  %retval.0.i109118.sink = phi i32 [ %call.i98, %usb_phy_io_write.exit.disable_clk_crit_edge ], [ -22, %land.lhs.true2.i.disable_clk_crit_edge ], [ -22, %land.lhs.true.i.disable_clk_crit_edge ], [ -22, %if.end.disable_clk_crit_edge ], [ %call.i107, %usb_phy_io_write.exit110.disable_clk_crit_edge ], [ -22, %land.lhs.true2.i106.disable_clk_crit_edge ], [ -22, %land.lhs.true.i103.disable_clk_crit_edge ], [ -22, %if.end28.disable_clk_crit_edge ]
  %u_phy36 = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 14
  %30 = ptrtoint ptr %u_phy36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %u_phy36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.87, i32 noundef %retval.0.i109118.sink) #9
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %33) #6
  tail call void @clk_unprepare(ptr noundef %33) #6
  br label %cleanup

cleanup:                                          ; preds = %disable_clk, %if.end38, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i109118.sink, %disable_clk ], [ 0, %if.end38 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_usb_phy_power_off(ptr nocapture noundef %phy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %powered_on = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 21
  %0 = ptrtoint ptr %powered_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %powered_on, align 2, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_ulpi_phy = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 16
  %2 = ptrtoint ptr %is_ulpi_phy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_ulpi_phy, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %reset_gpio.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 17
  %4 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #6
  %clk.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 5
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %wakeup_enabled.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 19
  %8 = ptrtoint ptr %wakeup_enabled.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wakeup_enabled.i, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then2.if.end7_crit_edge, label %land.rhs.i

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.rhs.i:                                       ; preds = %if.then2
  %.b44.i = load i1, ptr @ulpi_phy_power_off.__already_done, align 1
  br i1 %.b44.i, label %land.rhs.i.if.then37.i_crit_edge, label %if.then.i, !prof !227

land.rhs.i.if.then37.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then37.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ulpi_phy_power_off.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 850, i32 noundef 9, ptr noundef null) #6
  br label %if.then37.i

if.then37.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then37.i_crit_edge
  %call.i = tail call fastcc i32 @ulpi_phy_power_on(ptr noundef %phy) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  %regs.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 3
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %wakeup_enabled.i14 = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 19
  %12 = ptrtoint ptr %wakeup_enabled.i14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %wakeup_enabled.i14, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i15 = icmp eq i8 %13, 0
  br i1 %tobool.not.i15, label %if.else.if.end31.i_crit_edge, label %land.lhs.true.i

if.else.if.end31.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %if.else
  %mode.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 10
  %14 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 1
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end31.i_crit_edge, label %if.then.i17

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

if.then.i17:                                      ; preds = %land.lhs.true.i
  %call.i16 = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call.i16, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 661) #6
  %add.ptr.i = getelementptr i8, ptr %11, i32 1032
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !224
  %17 = and i32 %16, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not148.i = icmp eq i32 %17, 0
  br i1 %tobool11.not148.i, label %if.then.i17.if.end31.i_crit_edge, label %if.then.i17.land.lhs.true15.i_crit_edge

if.then.i17.land.lhs.true15.i_crit_edge:          ; preds = %if.then.i17
  br label %land.lhs.true15.i

if.then.i17.if.end31.i_crit_edge:                 ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

land.lhs.true15.i:                                ; preds = %if.then26.i.land.lhs.true15.i_crit_edge, %if.then.i17.land.lhs.true15.i_crit_edge
  %call16.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call16.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call16.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then19.i, label %if.then26.i

if.then19.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !224
  br label %if.end31.i

if.then26.i:                                      ; preds = %land.lhs.true15.i
  tail call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #6
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !224
  %20 = and i32 %19, 262144
  %tobool11.not.i = icmp eq i32 %20, 0
  br i1 %tobool11.not.i, label %if.then26.i.if.end31.i_crit_edge, label %if.then26.i.land.lhs.true15.i_crit_edge

if.then26.i.land.lhs.true15.i_crit_edge:          ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true15.i

if.then26.i.if.end31.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then26.i.if.end31.i_crit_edge, %if.then19.i, %if.then.i17.if.end31.i_crit_edge, %land.lhs.true.i.if.end31.i_crit_edge, %if.else.if.end31.i_crit_edge
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 1024
  %call.i.i.i = tail call i64 @ktime_get() #6
  %add.i.i.i.i = add i64 %call.i.i.i, 6000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 414) #6
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp103.i.i.i = icmp sgt i32 %23, -1
  br i1 %cmp103.i.i.i, label %if.end31.i.utmi_phy_clk_disable.exit.i_crit_edge, label %if.end31.i.land.lhs.true.i.i.i_crit_edge

if.end31.i.land.lhs.true.i.i.i_crit_edge:         ; preds = %if.end31.i
  br label %land.lhs.true.i.i.i

if.end31.i.utmi_phy_clk_disable.exit.i_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utmi_phy_clk_disable.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then22.i.i.i.land.lhs.true.i.i.i_crit_edge, %if.end31.i.land.lhs.true.i.i.i_crit_edge
  %call13.i.i.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i.i.i, i64 %add.i.i.i.i)
  %cmp3.i.i.i.i = icmp sgt i64 %call13.i.i.i, %add.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %utmi_wait_register.exit.i.i, label %if.then22.i.i.i

if.then22.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #6
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !224
  %cmp10.i.i.i = icmp sgt i32 %24, -1
  br i1 %cmp10.i.i.i, label %if.then22.i.i.i.utmi_phy_clk_disable.exit.i_crit_edge, label %if.then22.i.i.i.land.lhs.true.i.i.i_crit_edge

if.then22.i.i.i.land.lhs.true.i.i.i_crit_edge:    ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.i.i

if.then22.i.i.i.utmi_phy_clk_disable.exit.i_crit_edge: ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utmi_phy_clk_disable.exit.i

utmi_wait_register.exit.i.i:                      ; preds = %land.lhs.true.i.i.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp26.i.i.i = icmp sgt i32 %25, -1
  br i1 %cmp26.i.i.i, label %utmi_wait_register.exit.i.i.utmi_phy_clk_disable.exit.i_crit_edge, label %if.end.i.i

utmi_wait_register.exit.i.i.utmi_phy_clk_disable.exit.i_crit_edge: ; preds = %utmi_wait_register.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utmi_phy_clk_disable.exit.i

if.end.i.i:                                       ; preds = %utmi_wait_register.exit.i.i
  %is_legacy_phy.i.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 15
  %26 = ptrtoint ptr %is_legacy_phy.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_legacy_phy.i.i, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !224
  %29 = or i32 %28, 4194304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %29) #6, !srcloc !225
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #6
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !224
  %31 = and i32 %30, -4194305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %31) #6, !srcloc !225
  br label %if.end10.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %soc_config.i.i.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 12
  %34 = ptrtoint ptr %soc_config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %soc_config.i.i.i, align 4
  %has_hostpc.i.i.i = getelementptr inbounds %struct.tegra_phy_soc_config, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %has_hostpc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %has_hostpc.i.i.i, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i.i.i, label %if.else4.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 436
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !224
  %39 = or i32 %38, 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %39) #6, !srcloc !225
  br label %if.end10.i.i

if.else4.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr6.i.i.i = getelementptr i8, ptr %33, i32 388
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i.i) #6, !srcloc !224
  %41 = and i32 %40, -704675841
  %42 = or i32 %41, 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i.i, i32 %42) #6, !srcloc !225
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.else4.i.i.i, %if.then.i.i.i, %if.then1.i.i
  %call.i28.i.i = tail call i64 @ktime_get() #6
  %add.i.i29.i.i = add i64 %call.i28.i.i, 6000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 414) #6
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp103.i31.i.i = icmp sgt i32 %43, -1
  br i1 %cmp103.i31.i.i, label %if.end10.i.i.utmi_phy_clk_disable.exit.i_crit_edge, label %if.end10.i.i.land.lhs.true.i34.i.i_crit_edge

if.end10.i.i.land.lhs.true.i34.i.i_crit_edge:     ; preds = %if.end10.i.i
  br label %land.lhs.true.i34.i.i

if.end10.i.i.utmi_phy_clk_disable.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utmi_phy_clk_disable.exit.i

land.lhs.true.i34.i.i:                            ; preds = %if.then22.i39.i.i.land.lhs.true.i34.i.i_crit_edge, %if.end10.i.i.land.lhs.true.i34.i.i_crit_edge
  %call13.i32.i.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i32.i.i, i64 %add.i.i29.i.i)
  %cmp3.i.i33.i.i = icmp sgt i64 %call13.i32.i.i, %add.i.i29.i.i
  br i1 %cmp3.i.i33.i.i, label %utmi_wait_register.exit43.i.i, label %if.then22.i39.i.i

if.then22.i39.i.i:                                ; preds = %land.lhs.true.i34.i.i
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #6
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !224
  %cmp10.i38.i.i = icmp sgt i32 %44, -1
  br i1 %cmp10.i38.i.i, label %if.then22.i39.i.i.utmi_phy_clk_disable.exit.i_crit_edge, label %if.then22.i39.i.i.land.lhs.true.i34.i.i_crit_edge

if.then22.i39.i.i.land.lhs.true.i34.i.i_crit_edge: ; preds = %if.then22.i39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i34.i.i

if.then22.i39.i.i.utmi_phy_clk_disable.exit.i_crit_edge: ; preds = %if.then22.i39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utmi_phy_clk_disable.exit.i

utmi_wait_register.exit43.i.i:                    ; preds = %land.lhs.true.i34.i.i
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp26.i41.i.i = icmp sgt i32 %45, -1
  br i1 %cmp26.i41.i.i, label %utmi_wait_register.exit43.i.i.utmi_phy_clk_disable.exit.i_crit_edge, label %do.end.i.i

utmi_wait_register.exit43.i.i.utmi_phy_clk_disable.exit.i_crit_edge: ; preds = %utmi_wait_register.exit43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utmi_phy_clk_disable.exit.i

do.end.i.i:                                       ; preds = %utmi_wait_register.exit43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %u_phy.i.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 14
  %46 = ptrtoint ptr %u_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %u_phy.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.96) #9
  br label %utmi_phy_clk_disable.exit.i

utmi_phy_clk_disable.exit.i:                      ; preds = %do.end.i.i, %utmi_wait_register.exit43.i.i.utmi_phy_clk_disable.exit.i_crit_edge, %if.then22.i39.i.i.utmi_phy_clk_disable.exit.i_crit_edge, %if.end10.i.i.utmi_phy_clk_disable.exit.i_crit_edge, %utmi_wait_register.exit.i.i.utmi_phy_clk_disable.exit.i_crit_edge, %if.then22.i.i.i.utmi_phy_clk_disable.exit.i_crit_edge, %if.end31.i.utmi_phy_clk_disable.exit.i_crit_edge
  %48 = ptrtoint ptr %wakeup_enabled.i14 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %wakeup_enabled.i14, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool33.not.i = icmp eq i8 %49, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %utmi_phy_clk_disable.exit.i.if.end40.i_crit_edge

utmi_phy_clk_disable.exit.i.if.end40.i_crit_edge: ; preds = %utmi_phy_clk_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.then34.i:                                      ; preds = %utmi_phy_clk_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr36.i = getelementptr i8, ptr %11, i32 1024
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #6, !srcloc !224
  %51 = or i32 %50, 524288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %51) #6, !srcloc !225
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then34.i, %utmi_phy_clk_disable.exit.i.if.end40.i_crit_edge
  %add.ptr42.i = getelementptr i8, ptr %11, i32 2096
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.i) #6, !srcloc !224
  %53 = or i32 %52, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 %53) #6, !srcloc !225
  %54 = ptrtoint ptr %wakeup_enabled.i14 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %wakeup_enabled.i14, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool48.not.i = icmp eq i8 %55, 0
  br i1 %tobool48.not.i, label %if.then49.i, label %if.end40.i.if.end56.i_crit_edge

if.end40.i.if.end56.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

if.then49.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr51.i = getelementptr i8, ptr %11, i32 2056
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i) #6, !srcloc !224
  %57 = or i32 %56, 4195584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i, i32 %57) #6, !srcloc !225
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then49.i, %if.end40.i.if.end56.i_crit_edge
  %add.ptr58.i = getelementptr i8, ptr %11, i32 2104
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.i) #6, !srcloc !224
  %59 = or i32 %58, 352321536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58.i, i32 %59) #6, !srcloc !225
  %60 = ptrtoint ptr %wakeup_enabled.i14 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %wakeup_enabled.i14, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool64.not.i = icmp eq i8 %61, 0
  br i1 %tobool64.not.i, label %if.end56.i.if.end91.i_crit_edge, label %if.then65.i

if.end56.i.if.end91.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91.i

if.then65.i:                                      ; preds = %if.end56.i
  %add.ptr67.i = getelementptr i8, ptr %11, i32 1024
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67.i) #6, !srcloc !224
  %63 = and i32 %62, -67110657
  %64 = or i32 %63, 67110144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67.i, i32 %64) #6, !srcloc !225
  %mode74.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 10
  %65 = ptrtoint ptr %mode74.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mode74.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp75.not.i = icmp eq i32 %66, 1
  br i1 %cmp75.not.i, label %if.then65.i.if.end91.i_crit_edge, label %if.then76.i

if.then65.i.if.end91.i_crit_edge:                 ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91.i

if.then76.i:                                      ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr78.i = getelementptr i8, ptr %11, i32 1032
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78.i) #6, !srcloc !224
  %68 = and i32 %67, -33685569
  %69 = or i32 %68, 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.i, i32 %69) #6, !srcloc !225
  %add.ptr85.i = getelementptr i8, ptr %11, i32 1028
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85.i) #6, !srcloc !224
  %71 = or i32 %70, 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i, i32 %71) #6, !srcloc !225
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then76.i, %if.then65.i.if.end91.i_crit_edge, %if.end56.i.if.end91.i_crit_edge
  %pad_regs.i.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 4
  %72 = ptrtoint ptr %pad_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pad_regs.i.i, align 4
  %pad_clk.i.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 7
  %74 = ptrtoint ptr %pad_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pad_clk.i.i, align 4
  %call.i.i138.i = tail call i32 @clk_prepare(ptr noundef %75) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i138.i)
  %tobool.not.i.i139.i = icmp eq i32 %call.i.i138.i, 0
  br i1 %tobool.not.i.i139.i, label %if.end.i.i.i, label %if.end91.i.cleanup_crit_edge

if.end91.i.cleanup_crit_edge:                     ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end91.i
  %call1.i.i.i = tail call i32 @clk_enable(ptr noundef %75) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i140.i, label %if.end4.thread23

if.end4.thread23:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %75) #6
  br label %cleanup

if.end.i140.i:                                    ; preds = %if.end.i.i.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @utmip_pad_lock) #6
  %76 = load i32, ptr @utmip_pad_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool1.not.i.i = icmp eq i32 %76, 0
  br i1 %tobool1.not.i.i, label %do.end.i142.i, label %if.end3.i.i

do.end.i142.i:                                    ; preds = %if.end.i140.i
  call void @__sanitizer_cov_trace_pc() #8
  %u_phy.i141.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 14
  %77 = ptrtoint ptr %u_phy.i141.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %u_phy.i141.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.98) #9
  br label %if.end4

if.end3.i.i:                                      ; preds = %if.end.i140.i
  %79 = ptrtoint ptr %wakeup_enabled.i14 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %wakeup_enabled.i14, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool4.not.i.i = icmp eq i8 %80, 0
  br i1 %tobool4.not.i.i, label %if.end3.i.i.if.end6.i.i_crit_edge, label %if.then5.i.i

if.end3.i.i.if.end6.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i.i

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pad_wakeup.i.i = getelementptr inbounds %struct.tegra_usb_phy, ptr %phy, i32 0, i32 20
  %81 = ptrtoint ptr %pad_wakeup.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %pad_wakeup.i.i, align 1
  %inc.i.i = add i32 %76, 1
  store i32 %inc.i.i, ptr @utmip_pad_count, align 4
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then5.i.i, %if.end3.i.i.if.end6.i.i_crit_edge
  %82 = load i32, ptr @utmip_pad_count, align 4
  %dec.i.i = add i32 %82, -1
  store i32 %dec.i.i, ptr @utmip_pad_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i143.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i143.i, label %if.then7.i.i, label %if.end6.i.i.if.end4_crit_edge

if.end6.i.i.if.end4_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then7.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i144.i = getelementptr i8, ptr %73, i32 2060
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144.i) #6, !srcloc !224
  %84 = or i32 %83, 786432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144.i, i32 %84) #6, !srcloc !225
  br label %if.end4

if.end4:                                          ; preds = %if.then7.i.i, %if.end6.i.i.if.end4_crit_edge, %do.end.i142.i
  %ret.0.i.i = phi i32 [ 0, %if.then7.i.i ], [ 0, %if.end6.i.i.if.end4_crit_edge ], [ -22, %do.end.i142.i ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @utmip_pad_lock) #6
  %85 = ptrtoint ptr %pad_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pad_clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %86) #6
  tail call void @clk_unprepare(ptr noundef %86) #6
  br i1 %tobool1.not.i.i, label %if.end4.cleanup_crit_edge, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end4.if.end7_crit_edge, %if.then2.if.end7_crit_edge
  %87 = ptrtoint ptr %powered_on to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %powered_on, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge, %if.end4.thread23, %if.end91.i.cleanup_crit_edge, %if.then37.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0.i.i, %if.end4.cleanup_crit_edge ], [ %call1.i.i.i, %if.end4.thread23 ], [ %call.i.i138.i, %if.end91.i.cleanup_crit_edge ], [ -95, %if.then37.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_usb_phy_isr(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.tegra_usb_phy, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1032
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !225
  %3 = and i32 %2, 33685504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !40, !42, !44, !46, !47, !48, !50, !52, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !68, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !86, !87, !88, !89, !90, !91, !93, !95, !96, !97, !98, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !174, !176, !177, !179, !181, !182, !183, !184, !186, !187, !188, !190, !191, !193, !195, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !208, !210, !212}
!llvm.module.flags = !{!214, !215, !216, !217, !218, !219, !220, !221}
!llvm.ident = !{!222}

!0 = !{ptr @__ksymtab_tegra_usb_phy_preresume, !1, !"__ksymtab_tegra_usb_phy_preresume", i1 false, i1 false}
!1 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1133, i32 1}
!2 = !{ptr @__ksymtab_tegra_usb_phy_postresume, !3, !"__ksymtab_tegra_usb_phy_postresume", i1 false, i1 false}
!3 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1142, i32 1}
!4 = !{ptr @__ksymtab_tegra_ehci_phy_restore_start, !5, !"__ksymtab_tegra_ehci_phy_restore_start", i1 false, i1 false}
!5 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1152, i32 1}
!6 = !{ptr @__ksymtab_tegra_ehci_phy_restore_end, !7, !"__ksymtab_tegra_ehci_phy_restore_end", i1 false, i1 false}
!7 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1161, i32 1}
!8 = !{ptr @__initcall__kmod_phy_tegra_usb__293_1500_tegra_usb_phy_driver_init6, !9, !"__initcall__kmod_phy_tegra_usb__293_1500_tegra_usb_phy_driver_init6", i1 false, i1 false}
!9 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1500, i32 1}
!10 = !{ptr @__exitcall_tegra_usb_phy_driver_exit, !9, !"__exitcall_tegra_usb_phy_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description294, !12, !"__UNIQUE_ID_description294", i1 false, i1 false}
!12 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1502, i32 1}
!13 = !{ptr @__UNIQUE_ID_file295, !14, !"__UNIQUE_ID_file295", i1 false, i1 false}
!14 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1503, i32 1}
!15 = !{ptr @__UNIQUE_ID_license296, !14, !"__UNIQUE_ID_license296", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1496, i32 11}
!18 = !{ptr @tegra_usb_phy_driver, !19, !"tegra_usb_phy_driver", i1 false, i1 false}
!19 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1492, i32 31}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1360, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @tegra_usb_phy_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @tegra_usb_phy_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1371, i32 3}
!30 = !{ptr @tegra_usb_phy_probe._entry.6, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @tegra_usb_phy_probe._entry_ptr.8, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1376, i32 29}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1378, i32 27}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1384, i32 3}
!38 = !{ptr @tegra_usb_phy_probe._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tegra_usb_phy_probe._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1389, i32 51}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1393, i32 46}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1396, i32 3}
!46 = !{ptr @tegra_usb_phy_probe._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tegra_usb_phy_probe._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1402, i32 34}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1413, i32 49}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1416, i32 4}
!54 = !{ptr @tegra_usb_phy_probe._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @tegra_usb_phy_probe._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1425, i32 4}
!58 = !{ptr @tegra_usb_phy_probe._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @tegra_usb_phy_probe._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1435, i32 45}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1438, i32 4}
!64 = !{ptr @tegra_usb_phy_probe._entry.28, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @tegra_usb_phy_probe._entry_ptr.30, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1444, i32 11}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1446, i32 11}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1449, i32 4}
!72 = !{ptr @tegra_usb_phy_probe._entry.33, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @tegra_usb_phy_probe._entry_ptr.35, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1458, i32 4}
!76 = !{ptr @tegra_usb_phy_probe._entry.36, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @tegra_usb_phy_probe._entry_ptr.38, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1467, i32 3}
!80 = !{ptr @tegra_usb_phy_probe._entry.39, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @tegra_usb_phy_probe._entry_ptr.41, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1285, i32 55}
!84 = distinct !{null, !85, !"__print_once", i1 false, i1 false}
!85 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1291, i32 3}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @tegra_usb_phy_parse_pmc._entry, !85, !"_entry", i1 false, i1 false}
!90 = !{ptr @tegra_usb_phy_parse_pmc._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1308, i32 51}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1191, i32 3}
!95 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @utmi_phy_probe._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @utmi_phy_probe._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1202, i32 3}
!100 = !{ptr @utmi_phy_probe._entry.49, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @utmi_phy_probe._entry_ptr.51, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1213, i32 30}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1218, i32 30}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1223, i32 30}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1228, i32 30}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1233, i32 30}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1238, i32 30}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1244, i32 31}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1249, i32 31}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1254, i32 31}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1261, i32 22}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1264, i32 31}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1171, i32 3}
!126 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @read_utmi_param._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @read_utmi_param._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1082, i32 3}
!131 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @tegra_usb_phy_init._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @tegra_usb_phy_init._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1090, i32 3}
!136 = !{ptr @tegra_usb_phy_init._entry.67, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @tegra_usb_phy_init._entry_ptr.69, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @tegra_freq_table, !139, !"tegra_freq_table", i1 false, i1 false}
!139 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 181, i32 37}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 268, i32 3}
!142 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @utmip_pad_open._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @utmip_pad_open._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 277, i32 3}
!147 = !{ptr @utmip_pad_open._entry.72, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @utmip_pad_open._entry_ptr.74, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.76, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 284, i32 3}
!151 = !{ptr @utmip_pad_open._entry.75, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @utmip_pad_open._entry_ptr.77, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.79, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 293, i32 3}
!155 = !{ptr @utmip_pad_open._entry.78, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @utmip_pad_open._entry_ptr.80, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.81, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 169, i32 8}
!159 = !{ptr @utmip_pad_lock, !158, !"utmip_pad_lock", i1 false, i1 false}
!160 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1041, i32 3}
!162 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @tegra_usb_phy_configure_pmc._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @tegra_usb_phy_configure_pmc._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.85, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1050, i32 3}
!167 = !{ptr @tegra_usb_phy_configure_pmc._entry.84, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @tegra_usb_phy_configure_pmc._entry_ptr.86, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.87, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 813, i32 3}
!171 = !{ptr @.str.88, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @ulpi_phy_power_on._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @ulpi_phy_power_on._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @ulpi_phy_power_on._entry.89, !175, !"_entry", i1 false, i1 false}
!175 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 819, i32 3}
!176 = !{ptr @ulpi_phy_power_on._entry_ptr.90, !175, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @utmip_pad_count, !178, !"utmip_pad_count", i1 false, i1 false}
!178 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 170, i32 21}
!179 = !{ptr @.str.91, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 479, i32 3}
!181 = !{ptr @.str.92, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @utmi_phy_clk_enable._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @utmi_phy_clk_enable._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.93, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 309, i32 3}
!186 = !{ptr @utmip_pad_close._entry, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @utmip_pad_close._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @utmip_pad_close._entry.94, !189, !"_entry", i1 false, i1 false}
!189 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 316, i32 3}
!190 = !{ptr @utmip_pad_close._entry_ptr.95, !189, !"_entry_ptr", i1 false, i1 false}
!191 = distinct !{null, !192, !"__already_done", i1 false, i1 false}
!192 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 850, i32 6}
!193 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 445, i32 3}
!195 = !{ptr @.str.97, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @utmi_phy_clk_disable._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @utmi_phy_clk_disable._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 380, i32 3}
!200 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @utmip_pad_power_off._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @utmip_pad_power_off._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.100, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 974, i32 4}
!205 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @tegra_usb_phy_set_wakeup._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @tegra_usb_phy_set_wakeup._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @tegra_usb_phy_id_table, !209, !"tegra_usb_phy_id_table", i1 false, i1 false}
!209 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1333, i32 34}
!210 = !{ptr @tegra30_soc_config, !211, !"tegra30_soc_config", i1 false, i1 false}
!211 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1325, i32 42}
!212 = !{ptr @tegra20_soc_config, !213, !"tegra20_soc_config", i1 false, i1 false}
!213 = !{!"../drivers/usb/phy/phy-tegra-usb.c", i32 1317, i32 42}
!214 = !{i32 1, !"wchar_size", i32 2}
!215 = !{i32 1, !"min_enum_size", i32 4}
!216 = !{i32 8, !"branch-target-enforcement", i32 0}
!217 = !{i32 8, !"sign-return-address", i32 0}
!218 = !{i32 8, !"sign-return-address-all", i32 0}
!219 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!220 = !{i32 7, !"uwtable", i32 1}
!221 = !{i32 7, !"frame-pointer", i32 2}
!222 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!223 = !{i8 0, i8 2}
!224 = !{i64 3051282}
!225 = !{i64 3050864}
!226 = !{!"auto-init"}
!227 = !{!"branch_weights", i32 2000, i32 1}
!228 = !{!"branch_weights", i32 1, i32 2000}
