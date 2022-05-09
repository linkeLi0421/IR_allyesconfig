; ModuleID = '/llk/IR_all_yes/drivers/phy/tegra/xusb-tegra124.c_pt.bc'
source_filename = "../drivers/phy/tegra/xusb-tegra124.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tegra124_xusb_padctl_soc\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra124_xusb_padctl_soc\09\09\09\09"
module asm "\09.long\09__crc_tegra124_xusb_padctl_soc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra124_xusb_padctl_soc:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra124_xusb_padctl_soc\22\09\09\09\09\09"
module asm "__kstrtabns_tegra124_xusb_padctl_soc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.tegra_xusb_port_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.tegra_xusb_padctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_xusb_padctl_soc = type { ptr, i32, %struct.anon.79, ptr, ptr, i32, i8, i8 }
%struct.anon.79 = type { %struct.anon.80, %struct.anon.80, %struct.anon.80, %struct.anon.80 }
%struct.anon.80 = type { ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tegra_xusb_pad_soc = type { ptr, ptr, i32, ptr }
%struct.tegra_xusb_lane_soc = type { ptr, i32, i32, i32, ptr, i32, %struct.anon }
%struct.anon = type { i32 }
%struct.tegra_xusb_pad_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tegra_xusb_lane_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tegra_xusb_lane_map = type { i32, ptr, i32, ptr }
%struct.tegra_xusb_usb2_pad = type { %struct.tegra_xusb_pad, ptr, i32, %struct.mutex }
%struct.tegra_xusb_pad = type { ptr, ptr, ptr, ptr, %struct.device, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tegra_xusb_lane = type { ptr, ptr, ptr, %struct.list_head, i32, i32 }
%struct.tegra_xusb_padctl = type { ptr, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, ptr }
%struct.tegra124_xusb_padctl = type { %struct.tegra_xusb_padctl, %struct.tegra124_xusb_fuse_calibration }
%struct.tegra124_xusb_fuse_calibration = type { [3 x i32], i32, i32, i32 }
%struct.tegra_xusb_usb2_lane = type { %struct.tegra_xusb_lane, i32, i8 }
%struct.tegra_xusb_usb2_port = type { %struct.tegra_xusb_port, ptr, i32, i8, i32 }
%struct.tegra_xusb_port = type { ptr, ptr, i32, %struct.list_head, %struct.device, ptr, %struct.work_struct, %struct.usb_phy, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.tegra_xusb_hsic_pad = type { %struct.tegra_xusb_pad, ptr, ptr }
%struct.tegra_xusb_hsic_lane = type { %struct.tegra_xusb_lane, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.tegra_xusb_usb3_port = type { %struct.tegra_xusb_port, ptr, i8, i32, i8, i8, i32, i32, i32, i32 }

@tegra124_pads = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @tegra124_usb2_pad, ptr @tegra124_ulpi_pad, ptr @tegra124_hsic_pad, ptr @tegra124_pcie_pad, ptr @tegra124_sata_pad], [44 x i8] zeroinitializer }, align 32
@tegra124_usb2_port_ops = internal constant { %struct.tegra_xusb_port_ops, [44 x i8] } { %struct.tegra_xusb_port_ops { ptr @tegra_xusb_usb2_port_release, ptr @tegra_xusb_usb2_port_remove, ptr @tegra124_usb2_port_enable, ptr @tegra124_usb2_port_disable, ptr @tegra124_usb2_port_map }, [44 x i8] zeroinitializer }, align 32
@tegra124_ulpi_port_ops = internal constant { %struct.tegra_xusb_port_ops, [44 x i8] } { %struct.tegra_xusb_port_ops { ptr @tegra_xusb_ulpi_port_release, ptr null, ptr @tegra124_ulpi_port_enable, ptr @tegra124_ulpi_port_disable, ptr @tegra124_ulpi_port_map }, [44 x i8] zeroinitializer }, align 32
@tegra124_hsic_port_ops = internal constant { %struct.tegra_xusb_port_ops, [44 x i8] } { %struct.tegra_xusb_port_ops { ptr @tegra_xusb_hsic_port_release, ptr null, ptr @tegra124_hsic_port_enable, ptr @tegra124_hsic_port_disable, ptr @tegra124_hsic_port_map }, [44 x i8] zeroinitializer }, align 32
@tegra124_usb3_port_ops = internal constant { %struct.tegra_xusb_port_ops, [44 x i8] } { %struct.tegra_xusb_port_ops { ptr @tegra_xusb_usb3_port_release, ptr @tegra_xusb_usb3_port_remove, ptr @tegra124_usb3_port_enable, ptr @tegra124_usb3_port_disable, ptr @tegra124_usb3_port_map }, [44 x i8] zeroinitializer }, align 32
@tegra124_xusb_padctl_ops = internal constant { %struct.tegra_xusb_padctl_ops, [60 x i8] } { %struct.tegra_xusb_padctl_ops { ptr @tegra124_xusb_padctl_probe, ptr @tegra124_xusb_padctl_remove, ptr null, ptr null, ptr @tegra124_usb3_save_context, ptr @tegra124_hsic_set_idle, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra124_xusb_padctl_supply_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [16 x i8] zeroinitializer }, align 32
@tegra124_xusb_padctl_soc = dso_local constant { %struct.tegra_xusb_padctl_soc, [40 x i8] } { %struct.tegra_xusb_padctl_soc { ptr @tegra124_pads, i32 5, %struct.anon.79 { %struct.anon.80 { ptr @tegra124_usb2_port_ops, i32 3 }, %struct.anon.80 { ptr @tegra124_ulpi_port_ops, i32 1 }, %struct.anon.80 { ptr @tegra124_hsic_port_ops, i32 2 }, %struct.anon.80 { ptr @tegra124_usb3_port_ops, i32 2 } }, ptr @tegra124_xusb_padctl_ops, ptr @tegra124_xusb_padctl_supply_names, i32 4, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_tegra124_xusb_padctl_soc = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra124_xusb_padctl_soc = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra124_xusb_padctl_soc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra124_xusb_padctl_soc to i32), ptr @__kstrtab_tegra124_xusb_padctl_soc, ptr @__kstrtabns_tegra124_xusb_padctl_soc }, section "___ksymtab_gpl+tegra124_xusb_padctl_soc", align 4
@__UNIQUE_ID_author295 = internal constant [58 x i8] c"phy_tegra_xusb.author=Thierry Reding <treding@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [71 x i8] c"phy_tegra_xusb.description=NVIDIA Tegra 124 XUSB Pad Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [53 x i8] c"phy_tegra_xusb.file=drivers/phy/tegra/phy-tegra-xusb\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [30 x i8] c"phy_tegra_xusb.license=GPL v2\00", section ".modinfo", align 1
@tegra124_usb2_pad = internal constant { %struct.tegra_xusb_pad_soc, [16 x i8] } { %struct.tegra_xusb_pad_soc { ptr @.str, ptr @tegra124_usb2_lanes, i32 3, ptr @tegra124_usb2_ops }, [16 x i8] zeroinitializer }, align 32
@tegra124_ulpi_pad = internal constant { %struct.tegra_xusb_pad_soc, [16 x i8] } { %struct.tegra_xusb_pad_soc { ptr @.str.20, ptr @tegra124_ulpi_lanes, i32 1, ptr @tegra124_ulpi_ops }, [16 x i8] zeroinitializer }, align 32
@tegra124_hsic_pad = internal constant { %struct.tegra_xusb_pad_soc, [16 x i8] } { %struct.tegra_xusb_pad_soc { ptr @.str.22, ptr @tegra124_hsic_lanes, i32 2, ptr @tegra124_hsic_ops }, [16 x i8] zeroinitializer }, align 32
@tegra124_pcie_pad = internal constant { %struct.tegra_xusb_pad_soc, [16 x i8] } { %struct.tegra_xusb_pad_soc { ptr @.str.25, ptr @tegra124_pcie_lanes, i32 5, ptr @tegra124_pcie_ops }, [16 x i8] zeroinitializer }, align 32
@tegra124_sata_pad = internal constant { %struct.tegra_xusb_pad_soc, [16 x i8] } { %struct.tegra_xusb_pad_soc { ptr @.str.32, ptr @tegra124_sata_lanes, i32 1, ptr @tegra124_sata_ops }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb2\00", [27 x i8] zeroinitializer }, align 32
@tegra124_usb2_lanes = internal constant { [3 x %struct.tegra_xusb_lane_soc], [44 x i8] } { [3 x %struct.tegra_xusb_lane_soc] [%struct.tegra_xusb_lane_soc { ptr @.str.1, i32 4, i32 0, i32 3, ptr @tegra124_usb2_functions, i32 3, %struct.anon zeroinitializer }, %struct.tegra_xusb_lane_soc { ptr @.str.2, i32 4, i32 2, i32 3, ptr @tegra124_usb2_functions, i32 3, %struct.anon zeroinitializer }, %struct.tegra_xusb_lane_soc { ptr @.str.3, i32 4, i32 4, i32 3, ptr @tegra124_usb2_functions, i32 3, %struct.anon zeroinitializer }], [44 x i8] zeroinitializer }, align 32
@tegra124_usb2_ops = internal constant { %struct.tegra_xusb_pad_ops, [24 x i8] } { %struct.tegra_xusb_pad_ops { ptr @tegra124_usb2_pad_probe, ptr @tegra124_usb2_pad_remove }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usb2-0\00", [25 x i8] zeroinitializer }, align 32
@tegra124_usb2_functions = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6], [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usb2-1\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usb2-2\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"snps\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xusb\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@tegra124_usb2_pad_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&usb2->lock\00", [20 x i8] zeroinitializer }, align 32
@tegra124_usb2_lane_ops = internal constant { %struct.tegra_xusb_lane_ops, [60 x i8] } { %struct.tegra_xusb_lane_ops { ptr @tegra124_usb2_lane_probe, ptr @tegra124_usb2_lane_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra124_usb2_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @tegra124_usb2_phy_init, ptr @tegra124_usb2_phy_exit, ptr @tegra124_usb2_phy_power_on, ptr @tegra124_usb2_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@padctl_readl.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 0, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"phy_tegra_xusb\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"padctl_readl\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/phy/tegra/xusb.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%08lx > %08x\0A\00", [18 x i8] zeroinitializer }, align 32
@padctl_writel.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.12, ptr @.str.10, ptr @.str.13, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"padctl_writel\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%08lx < %08x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/phy/tegra/xusb-tegra124.c\00", [62 x i8] zeroinitializer }, align 32
@tegra124_usb2_phy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.14, i32 492, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no port found for USB2 lane %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra124_usb2_phy_power_on\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra124_usb2_phy_power_on._entry_ptr = internal global ptr @tegra124_usb2_phy_power_on._entry, section ".printk_index", align 4
@tegra124_usb2_phy_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.19, ptr @.str.14, i32 578, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra124_usb2_phy_power_off\00", [36 x i8] zeroinitializer }, align 32
@tegra124_usb2_phy_power_off._entry_ptr = internal global ptr @tegra124_usb2_phy_power_off._entry, section ".printk_index", align 4
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ulpi\00", [27 x i8] zeroinitializer }, align 32
@tegra124_ulpi_lanes = internal constant { [1 x %struct.tegra_xusb_lane_soc], [36 x i8] } { [1 x %struct.tegra_xusb_lane_soc] [%struct.tegra_xusb_lane_soc { ptr @.str.21, i32 4, i32 12, i32 1, ptr @tegra124_ulpi_functions, i32 2, %struct.anon zeroinitializer }], [36 x i8] zeroinitializer }, align 32
@tegra124_ulpi_ops = internal constant { %struct.tegra_xusb_pad_ops, [24 x i8] } { %struct.tegra_xusb_pad_ops { ptr @tegra124_ulpi_pad_probe, ptr @tegra124_ulpi_pad_remove }, [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ulpi-0\00", [25 x i8] zeroinitializer }, align 32
@tegra124_ulpi_functions = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.5], [24 x i8] zeroinitializer }, align 32
@tegra124_ulpi_lane_ops = internal constant { %struct.tegra_xusb_lane_ops, [60 x i8] } { %struct.tegra_xusb_lane_ops { ptr @tegra124_ulpi_lane_probe, ptr @tegra124_ulpi_lane_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra124_ulpi_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @tegra124_ulpi_phy_init, ptr @tegra124_ulpi_phy_exit, ptr @tegra124_ulpi_phy_power_on, ptr @tegra124_ulpi_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hsic\00", [27 x i8] zeroinitializer }, align 32
@tegra124_hsic_lanes = internal constant { [2 x %struct.tegra_xusb_lane_soc], [40 x i8] } { [2 x %struct.tegra_xusb_lane_soc] [%struct.tegra_xusb_lane_soc { ptr @.str.23, i32 4, i32 14, i32 1, ptr @tegra124_hsic_functions, i32 2, %struct.anon zeroinitializer }, %struct.tegra_xusb_lane_soc { ptr @.str.24, i32 4, i32 15, i32 1, ptr @tegra124_hsic_functions, i32 2, %struct.anon zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@tegra124_hsic_ops = internal constant { %struct.tegra_xusb_pad_ops, [24 x i8] } { %struct.tegra_xusb_pad_ops { ptr @tegra124_hsic_pad_probe, ptr @tegra124_hsic_pad_remove }, [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hsic-0\00", [25 x i8] zeroinitializer }, align 32
@tegra124_hsic_functions = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.5], [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hsic-1\00", [25 x i8] zeroinitializer }, align 32
@tegra124_hsic_lane_ops = internal constant { %struct.tegra_xusb_lane_ops, [60 x i8] } { %struct.tegra_xusb_lane_ops { ptr @tegra124_hsic_lane_probe, ptr @tegra124_hsic_lane_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra124_hsic_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @tegra124_hsic_phy_init, ptr @tegra124_hsic_phy_exit, ptr @tegra124_hsic_phy_power_on, ptr @tegra124_hsic_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcie\00", [27 x i8] zeroinitializer }, align 32
@tegra124_pcie_lanes = internal constant { [5 x %struct.tegra_xusb_lane_soc], [52 x i8] } { [5 x %struct.tegra_xusb_lane_soc] [%struct.tegra_xusb_lane_soc { ptr @.str.26, i32 308, i32 16, i32 3, ptr @tegra124_pcie_functions, i32 3, %struct.anon zeroinitializer }, %struct.tegra_xusb_lane_soc { ptr @.str.27, i32 308, i32 18, i32 3, ptr @tegra124_pcie_functions, i32 3, %struct.anon zeroinitializer }, %struct.tegra_xusb_lane_soc { ptr @.str.28, i32 308, i32 20, i32 3, ptr @tegra124_pcie_functions, i32 3, %struct.anon zeroinitializer }, %struct.tegra_xusb_lane_soc { ptr @.str.29, i32 308, i32 22, i32 3, ptr @tegra124_pcie_functions, i32 3, %struct.anon zeroinitializer }, %struct.tegra_xusb_lane_soc { ptr @.str.30, i32 308, i32 24, i32 3, ptr @tegra124_pcie_functions, i32 3, %struct.anon zeroinitializer }], [52 x i8] zeroinitializer }, align 32
@tegra124_pcie_ops = internal constant { %struct.tegra_xusb_pad_ops, [24 x i8] } { %struct.tegra_xusb_pad_ops { ptr @tegra124_pcie_pad_probe, ptr @tegra124_pcie_pad_remove }, [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcie-0\00", [25 x i8] zeroinitializer }, align 32
@tegra124_pcie_functions = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.25, ptr @.str.31, ptr @.str.32], [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcie-1\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcie-2\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcie-3\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcie-4\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb3-ss\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sata\00", [27 x i8] zeroinitializer }, align 32
@tegra124_pcie_lane_ops = internal constant { %struct.tegra_xusb_lane_ops, [60 x i8] } { %struct.tegra_xusb_lane_ops { ptr @tegra124_pcie_lane_probe, ptr @tegra124_pcie_lane_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra124_pcie_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @tegra124_pcie_phy_init, ptr @tegra124_pcie_phy_exit, ptr @tegra124_pcie_phy_power_on, ptr @tegra124_pcie_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tegra124_sata_lanes = internal constant { [1 x %struct.tegra_xusb_lane_soc], [36 x i8] } { [1 x %struct.tegra_xusb_lane_soc] [%struct.tegra_xusb_lane_soc { ptr @.str.33, i32 308, i32 26, i32 3, ptr @tegra124_pcie_functions, i32 3, %struct.anon zeroinitializer }], [36 x i8] zeroinitializer }, align 32
@tegra124_sata_ops = internal constant { %struct.tegra_xusb_pad_ops, [24 x i8] } { %struct.tegra_xusb_pad_ops { ptr @tegra124_sata_pad_probe, ptr @tegra124_sata_pad_remove }, [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sata-0\00", [25 x i8] zeroinitializer }, align 32
@tegra124_sata_lane_ops = internal constant { %struct.tegra_xusb_lane_ops, [60 x i8] } { %struct.tegra_xusb_lane_ops { ptr @tegra124_sata_lane_probe, ptr @tegra124_sata_lane_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra124_sata_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @tegra124_sata_phy_init, ptr @tegra124_sata_phy_exit, ptr @tegra124_sata_phy_power_on, ptr @tegra124_sata_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@tegra124_usb3_map = internal constant { [4 x %struct.tegra_xusb_lane_map], [32 x i8] } { [4 x %struct.tegra_xusb_lane_map] [%struct.tegra_xusb_lane_map { i32 0, ptr @.str.25, i32 0, ptr null }, %struct.tegra_xusb_lane_map { i32 1, ptr @.str.25, i32 1, ptr null }, %struct.tegra_xusb_lane_map { i32 1, ptr @.str.32, i32 0, ptr null }, %struct.tegra_xusb_lane_map zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"avdd-pll-utmip\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"avdd-pll-erefe\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"avdd-pex-pll\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hvdd-pex-pll-e\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"tegra124_pads\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1401, i32 41 }
@___asan_gen_.41 = private unnamed_addr constant [23 x i8] c"tegra124_usb2_port_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1424, i32 41 }
@___asan_gen_.44 = private unnamed_addr constant [23 x i8] c"tegra124_ulpi_port_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1447, i32 41 }
@___asan_gen_.47 = private unnamed_addr constant [23 x i8] c"tegra124_hsic_port_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1469, i32 41 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"tegra124_usb3_port_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1653, i32 41 }
@___asan_gen_.53 = private unnamed_addr constant [25 x i8] c"tegra124_xusb_padctl_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1715, i32 43 }
@___asan_gen_.56 = private unnamed_addr constant [34 x i8] c"tegra124_xusb_padctl_supply_names\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1722, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant [25 x i8] c"tegra124_xusb_padctl_soc\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1729, i32 36 }
@___asan_gen_.62 = private unnamed_addr constant [18 x i8] c"tegra124_usb2_pad\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 659, i32 40 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"tegra124_ulpi_pad\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 794, i32 40 }
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"tegra124_hsic_pad\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1010, i32 40 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"tegra124_pcie_pad\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1198, i32 40 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"tegra124_sata_pad\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1394, i32 40 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 660, i32 10 }
@___asan_gen_.80 = private unnamed_addr constant [20 x i8] c"tegra124_usb2_lanes\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 420, i32 41 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"tegra124_usb2_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 654, i32 40 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 421, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [24 x i8] c"tegra124_usb2_functions\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 414, i32 27 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 422, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 423, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 415, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 416, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 417, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 621, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [23 x i8] c"tegra124_usb2_lane_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 459, i32 41 }
@___asan_gen_.116 = private unnamed_addr constant [22 x i8] c"tegra124_usb2_phy_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 600, i32 29 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 472, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [28 x i8] c"../drivers/phy/tegra/xusb.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 464, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 261, i32 6 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 492, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 577, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 795, i32 10 }
@___asan_gen_.164 = private unnamed_addr constant [20 x i8] c"tegra124_ulpi_lanes\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 671, i32 41 }
@___asan_gen_.167 = private unnamed_addr constant [18 x i8] c"tegra124_ulpi_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 789, i32 40 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 672, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [24 x i8] c"tegra124_ulpi_functions\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 666, i32 27 }
@___asan_gen_.176 = private unnamed_addr constant [23 x i8] c"tegra124_ulpi_lane_ops\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 708, i32 41 }
@___asan_gen_.179 = private unnamed_addr constant [22 x i8] c"tegra124_ulpi_phy_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 737, i32 29 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1011, i32 10 }
@___asan_gen_.185 = private unnamed_addr constant [20 x i8] c"tegra124_hsic_lanes\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 806, i32 41 }
@___asan_gen_.188 = private unnamed_addr constant [18 x i8] c"tegra124_hsic_ops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1005, i32 40 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 807, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [24 x i8] c"tegra124_hsic_functions\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 801, i32 27 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 808, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [23 x i8] c"tegra124_hsic_lane_ops\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 844, i32 41 }
@___asan_gen_.203 = private unnamed_addr constant [22 x i8] c"tegra124_hsic_phy_ops\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 953, i32 29 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1199, i32 10 }
@___asan_gen_.209 = private unnamed_addr constant [20 x i8] c"tegra124_pcie_lanes\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1023, i32 41 }
@___asan_gen_.212 = private unnamed_addr constant [18 x i8] c"tegra124_pcie_ops\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1193, i32 40 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1024, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [24 x i8] c"tegra124_pcie_functions\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1017, i32 27 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1025, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1026, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1027, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1028, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1019, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1020, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [23 x i8] c"tegra124_pcie_lane_ops\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1064, i32 41 }
@___asan_gen_.242 = private unnamed_addr constant [22 x i8] c"tegra124_pcie_phy_ops\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1141, i32 29 }
@___asan_gen_.245 = private unnamed_addr constant [20 x i8] c"tegra124_sata_lanes\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1205, i32 41 }
@___asan_gen_.248 = private unnamed_addr constant [18 x i8] c"tegra124_sata_ops\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1389, i32 40 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1206, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [23 x i8] c"tegra124_sata_lane_ops\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1242, i32 41 }
@___asan_gen_.257 = private unnamed_addr constant [22 x i8] c"tegra124_sata_phy_ops\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1337, i32 29 }
@___asan_gen_.260 = private unnamed_addr constant [18 x i8] c"tegra124_usb3_map\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1640, i32 41 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1723, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1724, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1725, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.273 = private constant [37 x i8] c"../drivers/phy/tegra/xusb-tegra124.c\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1726, i32 2 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__ksymtab_tegra124_xusb_padctl_soc, ptr @tegra124_usb2_phy_power_off._entry, ptr @tegra124_usb2_phy_power_off._entry_ptr, ptr @tegra124_usb2_phy_power_on._entry, ptr @tegra124_usb2_phy_power_on._entry_ptr, ptr @tegra124_pads, ptr @tegra124_usb2_port_ops, ptr @tegra124_ulpi_port_ops, ptr @tegra124_hsic_port_ops, ptr @tegra124_usb3_port_ops, ptr @tegra124_xusb_padctl_ops, ptr @tegra124_xusb_padctl_supply_names, ptr @tegra124_xusb_padctl_soc, ptr @tegra124_usb2_pad, ptr @tegra124_ulpi_pad, ptr @tegra124_hsic_pad, ptr @tegra124_pcie_pad, ptr @tegra124_sata_pad, ptr @.str, ptr @tegra124_usb2_lanes, ptr @tegra124_usb2_ops, ptr @.str.1, ptr @tegra124_usb2_functions, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tegra124_usb2_pad_probe.__key, ptr @.str.7, ptr @tegra124_usb2_lane_ops, ptr @tegra124_usb2_phy_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @tegra124_ulpi_lanes, ptr @tegra124_ulpi_ops, ptr @.str.21, ptr @tegra124_ulpi_functions, ptr @tegra124_ulpi_lane_ops, ptr @tegra124_ulpi_phy_ops, ptr @.str.22, ptr @tegra124_hsic_lanes, ptr @tegra124_hsic_ops, ptr @.str.23, ptr @tegra124_hsic_functions, ptr @.str.24, ptr @tegra124_hsic_lane_ops, ptr @tegra124_hsic_phy_ops, ptr @.str.25, ptr @tegra124_pcie_lanes, ptr @tegra124_pcie_ops, ptr @.str.26, ptr @tegra124_pcie_functions, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @tegra124_pcie_lane_ops, ptr @tegra124_pcie_phy_ops, ptr @tegra124_sata_lanes, ptr @tegra124_sata_ops, ptr @.str.33, ptr @tegra124_sata_lane_ops, ptr @tegra124_sata_phy_ops, ptr @tegra124_usb3_map, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_pads to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_usb2_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_ulpi_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_hsic_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_usb3_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_xusb_padctl_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_xusb_padctl_supply_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_xusb_padctl_soc to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_usb2_pad to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_ulpi_pad to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_hsic_pad to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_pcie_pad to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_sata_pad to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_usb2_lanes to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_usb2_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_usb2_functions to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_usb2_pad_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_usb2_lane_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_usb2_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_usb2_phy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_usb2_phy_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_ulpi_lanes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_ulpi_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_ulpi_functions to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_ulpi_lane_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_ulpi_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_hsic_lanes to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_hsic_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_hsic_functions to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_hsic_lane_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_hsic_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_pcie_lanes to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_pcie_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_pcie_functions to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_pcie_lane_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_pcie_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_sata_lanes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_sata_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_sata_lane_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_sata_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_usb3_map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra124_usb2_pad_probe(ptr noundef %padctl, ptr noundef %soc, ptr noundef %np) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1064) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.tegra_xusb_usb2_pad, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @tegra124_usb2_pad_probe.__key) #7
  %ops = getelementptr inbounds %struct.tegra_xusb_pad, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tegra124_usb2_lane_ops, ptr %ops, align 8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %soc, ptr %call7.i.i, align 8
  %call3 = tail call i32 @tegra_xusb_pad_init(ptr noundef nonnull %call7.i.i, ptr noundef %padctl, ptr noundef %np) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %out

if.end5:                                          ; preds = %do.body
  %call6 = tail call i32 @tegra_xusb_pad_register(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @tegra124_usb2_phy_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %unregister, label %if.end9

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i = getelementptr inbounds %struct.tegra_xusb_pad, ptr %call7.i.i, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  br label %cleanup

unregister:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %call7.i.i, i32 0, i32 4
  tail call void @device_unregister(ptr noundef %dev10) #7
  br label %out

out:                                              ; preds = %unregister, %if.then4
  %err.0 = phi i32 [ %call3, %if.then4 ], [ %call6, %unregister ]
  %4 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %out ], [ %call7.i.i, %if.end9 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra124_usb2_pad_remove(ptr noundef %pad) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %pad) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_pad_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_pad_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra124_usb2_lane_probe(ptr noundef %pad, ptr noundef %np, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 8
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pad, align 8
  %lanes = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lanes, align 4
  %arrayidx = getelementptr %struct.tegra_xusb_lane_soc, ptr %6, i32 %index
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx, ptr %call7.i.i, align 8
  %index5 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %index5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %index, ptr %index5, align 8
  %pad7 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %pad7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pad, ptr %pad7, align 4
  %np9 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %np9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %np, ptr %np9, align 8
  %call11 = tail call i32 @tegra_xusb_lane_parse_dt(ptr noundef nonnull %call7.i.i, ptr noundef %np) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.then12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %11 = inttoptr i32 %call11 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %if.then12 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra124_usb2_lane_remove(ptr noundef %lane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %lane) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_lane_parse_dt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_usb2_phy_init(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pad = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad, align 4
  %padctl = getelementptr inbounds %struct.tegra_xusb_pad, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padctl, align 4
  tail call fastcc void @tegra124_xusb_padctl_enable(ptr noundef %5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_usb2_phy_exit(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pad = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad, align 4
  %padctl = getelementptr inbounds %struct.tegra_xusb_pad, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padctl, align 4
  tail call fastcc void @tegra124_xusb_padctl_disable(ptr noundef %5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_usb2_phy_power_on(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pad2 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pad2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad2, align 4
  %padctl5 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %padctl5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padctl5, align 4
  %index6 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %index6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index6, align 4
  %call7 = tail call ptr @tegra_xusb_find_usb2_port(ptr noundef %5, i32 noundef %7) #7
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.15, i32 noundef %7) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 184
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !170
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb2_phy_power_on, %if.then.i)) #7
          to label %padctl_readl.exit [label %if.then.i], !srcloc !172

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %13, ptr noundef nonnull @.str.11, i32 noundef 184, i32 noundef %11) #7
  br label %padctl_readl.exit

padctl_readl.exit:                                ; preds = %if.then.i, %if.end
  %and = and i32 %11, -32
  %fuse = getelementptr inbounds %struct.tegra124_xusb_padctl, ptr %5, i32 0, i32 1
  %hs_squelch_level = getelementptr inbounds %struct.tegra124_xusb_padctl, ptr %5, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %hs_squelch_level to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hs_squelch_level, align 4
  %or = or i32 %and, %15
  %or10 = or i32 %or, 20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb2_phy_power_on, %if.then.i105)) #7
          to label %padctl_writel.exit [label %if.then.i105], !srcloc !172

if.then.i105:                                     ; preds = %padctl_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %17, ptr noundef nonnull @.str.13, i32 noundef 184, i32 noundef %or10) #7
  br label %padctl_writel.exit

padctl_writel.exit:                               ; preds = %if.then.i105, %padctl_readl.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %or10) #7
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i107 = getelementptr i8, ptr %20, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 %18) #7, !srcloc !174
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %22, i32 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109) #7, !srcloc !170
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb2_phy_power_on, %if.then.i110)) #7
          to label %padctl_readl.exit111 [label %if.then.i110], !srcloc !172

if.then.i110:                                     ; preds = %padctl_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %26, ptr noundef nonnull @.str.11, i32 noundef 8, i32 noundef %24) #7
  br label %padctl_readl.exit111

padctl_readl.exit111:                             ; preds = %if.then.i110, %padctl_writel.exit
  %mul = shl i32 %7, 2
  %shl12 = shl i32 3, %mul
  %neg = xor i32 %shl12, -1
  %and13 = and i32 %24, %neg
  %shl15 = shl nuw i32 1, %mul
  %or16 = or i32 %and13, %shl15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb2_phy_power_on, %if.then.i112)) #7
          to label %padctl_writel.exit115 [label %if.then.i112], !srcloc !172

if.then.i112:                                     ; preds = %padctl_readl.exit111
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %28, ptr noundef nonnull @.str.13, i32 noundef 8, i32 noundef %or16) #7
  br label %padctl_writel.exit115

padctl_writel.exit115:                            ; preds = %if.then.i112, %padctl_readl.exit111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %or16) #7
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr.i114 = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %29) #7, !srcloc !174
  %add = add i32 %mul, 160
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %33, i32 %add
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #7, !srcloc !170
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb2_phy_power_on, %if.then.i118)) #7
          to label %padctl_readl.exit119 [label %if.then.i118], !srcloc !172

if.then.i118:                                     ; preds = %padctl_writel.exit115
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %37, ptr noundef nonnull @.str.11, i32 noundef %add, i32 noundef %35) #7
  br label %padctl_readl.exit119

padctl_readl.exit119:                             ; preds = %if.then.i118, %padctl_writel.exit115
  %and19 = and i32 %35, -3723264
  %arrayidx = getelementptr [3 x i32], ptr %fuse, i32 0, i32 %7
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 4
  %hs_curr_level_offset = getelementptr inbounds %struct.tegra_xusb_usb2_lane, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %hs_curr_level_offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hs_curr_level_offset, align 4
  %add21 = add i32 %41, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool25.not = icmp eq i32 %7, 0
  %or23 = select i1 %tobool25.not, i32 50048, i32 896
  %or24 = or i32 %or23, %and19
  %or27 = or i32 %or24, %add21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb2_phy_power_on, %if.then.i120)) #7
          to label %padctl_writel.exit123 [label %if.then.i120], !srcloc !172

if.then.i120:                                     ; preds = %padctl_readl.exit119
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %43, ptr noundef nonnull @.str.13, i32 noundef %add, i32 noundef %or27) #7
  br label %padctl_writel.exit123

padctl_writel.exit123:                            ; preds = %if.then.i120, %padctl_readl.exit119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %44 = tail call i32 @llvm.bswap.i32(i32 %or27) #7
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %46, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %44) #7, !srcloc !174
  %add31 = add i32 %mul, 172
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 4
  %add.ptr.i125 = getelementptr i8, ptr %48, i32 %add31
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125) #7, !srcloc !170
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb2_phy_power_on, %if.then.i126)) #7
          to label %padctl_readl.exit127 [label %if.then.i126], !srcloc !172

if.then.i126:                                     ; preds = %padctl_writel.exit123
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %52, ptr noundef nonnull @.str.11, i32 noundef %add31, i32 noundef %50) #7
  br label %padctl_readl.exit127

padctl_readl.exit127:                             ; preds = %if.then.i126, %padctl_writel.exit123
  %and33 = and i32 %50, -1600
  %hs_term_range_adj = getelementptr inbounds %struct.tegra124_xusb_padctl, ptr %5, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %hs_term_range_adj to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hs_term_range_adj, align 4
  %shl35 = shl i32 %54, 3
  %hs_iref_cap = getelementptr inbounds %struct.tegra124_xusb_padctl, ptr %5, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %hs_iref_cap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hs_iref_cap, align 4
  %shl37 = shl i32 %56, 9
  %or38 = or i32 %shl35, %and33
  %or39 = or i32 %or38, %shl37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb2_phy_power_on, %if.then.i128)) #7
          to label %padctl_writel.exit131 [label %if.then.i128], !srcloc !172

if.then.i128:                                     ; preds = %padctl_readl.exit127
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %58, ptr noundef nonnull @.str.13, i32 noundef %add31, i32 noundef %or39) #7
  br label %padctl_writel.exit131

padctl_writel.exit131:                            ; preds = %if.then.i128, %padctl_readl.exit127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %59 = tail call i32 @llvm.bswap.i32(i32 %or39) #7
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %61, i32 %add31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %59) #7, !srcloc !174
  %supply = getelementptr inbounds %struct.tegra_xusb_usb2_port, ptr %call7, i32 0, i32 1
  %62 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %supply, align 8
  %call42 = tail call i32 @regulator_enable(ptr noundef %63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %padctl_writel.exit131.cleanup_crit_edge

padctl_writel.exit131.cleanup_crit_edge:          ; preds = %padctl_writel.exit131
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %padctl_writel.exit131
  %lock = getelementptr inbounds %struct.tegra_xusb_usb2_pad, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %enable = getelementptr inbounds %struct.tegra_xusb_usb2_pad, ptr %3, i32 0, i32 2
  %64 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %enable, align 4
  %inc = add i32 %65, 1
  store i32 %inc, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.not = icmp eq i32 %65, 0
  br i1 %cmp.not, label %if.end47, label %if.end45.out_crit_edge

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end47:                                         ; preds = %if.end45
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 4
  %add.ptr.i133 = getelementptr i8, ptr %67, i32 184
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133) #7, !srcloc !170
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb2_phy_power_on, %if.then.i134)) #7
          to label %padctl_readl.exit135 [label %if.then.i134], !srcloc !172

if.then.i134:                                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %71, ptr noundef nonnull @.str.11, i32 noundef 184, i32 noundef %69) #7
  br label %padctl_readl.exit135

padctl_readl.exit135:                             ; preds = %if.then.i134, %if.end47
  %and49 = and i32 %69, -4097
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb2_phy_power_on, %if.then.i136)) #7
          to label %padctl_writel.exit139 [label %if.then.i136], !srcloc !172

if.then.i136:                                     ; preds = %padctl_readl.exit135
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %73, ptr noundef nonnull @.str.13, i32 noundef 184, i32 noundef %and49) #7
  br label %padctl_writel.exit139

padctl_writel.exit139:                            ; preds = %if.then.i136, %padctl_readl.exit135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %74 = tail call i32 @llvm.bswap.i32(i32 %and49) #7
  %75 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i, align 4
  %add.ptr.i138 = getelementptr i8, ptr %76, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 %74) #7, !srcloc !174
  br label %out

out:                                              ; preds = %padctl_writel.exit139, %if.end45.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %padctl_writel.exit131.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %out ], [ -19, %do.end ], [ %call42, %padctl_writel.exit131.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_usb2_phy_power_off(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pad1 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pad1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad1, align 4
  %padctl4 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %padctl4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padctl4, align 4
  %index = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %call5 = tail call ptr @tegra_xusb_find_usb2_port(ptr noundef %5, i32 noundef %7) #7
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.15, i32 noundef %9) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.tegra_xusb_usb2_pad, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %enable = getelementptr inbounds %struct.tegra_xusb_usb2_pad, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %do.end18, label %if.end33.critedge, !prof !175

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 584, i32 noundef 9, ptr noundef null) #7
  br label %out

if.end33.critedge:                                ; preds = %if.end
  %dec = add i32 %11, -1
  %12 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dec, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp35.not = icmp eq i32 %dec, 0
  br i1 %cmp35.not, label %if.end37, label %if.end33.critedge.out_crit_edge

if.end33.critedge.out_crit_edge:                  ; preds = %if.end33.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end37:                                         ; preds = %if.end33.critedge
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 184
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !170
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb2_phy_power_off, %if.then.i)) #7
          to label %padctl_readl.exit [label %if.then.i], !srcloc !172

if.then.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %18, ptr noundef nonnull @.str.11, i32 noundef 184, i32 noundef %16) #7
  br label %padctl_readl.exit

padctl_readl.exit:                                ; preds = %if.then.i, %if.end37
  %or = or i32 %16, 4096
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb2_phy_power_off, %if.then.i57)) #7
          to label %padctl_writel.exit [label %if.then.i57], !srcloc !172

if.then.i57:                                      ; preds = %padctl_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %20, ptr noundef nonnull @.str.13, i32 noundef 184, i32 noundef %or) #7
  br label %padctl_writel.exit

padctl_writel.exit:                               ; preds = %if.then.i57, %padctl_readl.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %23, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %21) #7, !srcloc !174
  br label %out

out:                                              ; preds = %padctl_writel.exit, %if.end33.critedge.out_crit_edge, %do.end18
  %supply = getelementptr inbounds %struct.tegra_xusb_usb2_port, ptr %call5, i32 0, i32 1
  %24 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %supply, align 8
  %call39 = tail call i32 @regulator_disable(ptr noundef %25) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ 0, %out ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra124_xusb_padctl_enable(ptr noundef %padctl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %padctl, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %enable = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %padctl, i32 0, i32 13
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %padctl, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !170
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_xusb_padctl_enable, %if.then.i)) #7
          to label %padctl_readl.exit [label %if.then.i], !srcloc !172

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %7, ptr noundef nonnull @.str.11, i32 noundef 28, i32 noundef %5) #7
  br label %padctl_readl.exit

padctl_readl.exit:                                ; preds = %if.then.i, %if.end
  %and = and i32 %5, -16777217
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_xusb_padctl_enable, %if.then.i1)) #7
          to label %padctl_writel.exit [label %if.then.i1], !srcloc !172

if.then.i1:                                       ; preds = %padctl_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %9, ptr noundef nonnull @.str.13, i32 noundef 28, i32 noundef %and) #7
  br label %padctl_writel.exit

padctl_writel.exit:                               ; preds = %if.then.i1, %padctl_readl.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %12, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %10) #7, !srcloc !174
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %14, i32 28
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #7, !srcloc !170
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_xusb_padctl_enable, %if.then.i6)) #7
          to label %padctl_readl.exit7 [label %if.then.i6], !srcloc !172

if.then.i6:                                       ; preds = %padctl_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %18, ptr noundef nonnull @.str.11, i32 noundef 28, i32 noundef %16) #7
  br label %padctl_readl.exit7

padctl_readl.exit7:                               ; preds = %if.then.i6, %padctl_writel.exit
  %and2 = and i32 %16, -33554433
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_xusb_padctl_enable, %if.then.i8)) #7
          to label %padctl_writel.exit11 [label %if.then.i8], !srcloc !172

if.then.i8:                                       ; preds = %padctl_readl.exit7
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %20, ptr noundef nonnull @.str.13, i32 noundef 28, i32 noundef %and2) #7
  br label %padctl_writel.exit11

padctl_writel.exit11:                             ; preds = %if.then.i8, %padctl_readl.exit7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %and2) #7
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %23, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %21) #7, !srcloc !174
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %25, i32 28
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #7, !srcloc !170
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_xusb_padctl_enable, %if.then.i14)) #7
          to label %padctl_readl.exit15 [label %if.then.i14], !srcloc !172

if.then.i14:                                      ; preds = %padctl_writel.exit11
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %29, ptr noundef nonnull @.str.11, i32 noundef 28, i32 noundef %27) #7
  br label %padctl_readl.exit15

padctl_readl.exit15:                              ; preds = %if.then.i14, %padctl_writel.exit11
  %and4 = and i32 %27, -67108865
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_xusb_padctl_enable, %if.then.i16)) #7
          to label %padctl_writel.exit19 [label %if.then.i16], !srcloc !172

if.then.i16:                                      ; preds = %padctl_readl.exit15
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %31, ptr noundef nonnull @.str.13, i32 noundef 28, i32 noundef %and4) #7
  br label %padctl_writel.exit19

padctl_writel.exit19:                             ; preds = %if.then.i16, %padctl_readl.exit15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %and4) #7
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %34, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %32) #7, !srcloc !174
  br label %out

out:                                              ; preds = %padctl_writel.exit19, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra124_xusb_padctl_disable(ptr noundef %padctl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %padctl, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %enable = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %padctl, i32 0, i32 13
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %if.end21.critedge, !prof !175

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 261, i32 noundef 9, ptr noundef null) #7
  br label %out

if.end21.critedge:                                ; preds = %entry
  %dec = add i32 %1, -1
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp23.not = icmp eq i32 %dec, 0
  br i1 %cmp23.not, label %if.end25, label %if.end21.critedge.out_crit_edge

if.end21.critedge.out_crit_edge:                  ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end25:                                         ; preds = %if.end21.critedge
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %padctl, i32 0, i32 1
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 28
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !170
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_xusb_padctl_disable, %if.then.i)) #7
          to label %padctl_readl.exit [label %if.then.i], !srcloc !172

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %8, ptr noundef nonnull @.str.11, i32 noundef 28, i32 noundef %6) #7
  br label %padctl_readl.exit

padctl_readl.exit:                                ; preds = %if.then.i, %if.end25
  %or = or i32 %6, 67108864
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_xusb_padctl_disable, %if.then.i1)) #7
          to label %padctl_writel.exit [label %if.then.i1], !srcloc !172

if.then.i1:                                       ; preds = %padctl_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %10, ptr noundef nonnull @.str.13, i32 noundef 28, i32 noundef %or) #7
  br label %padctl_writel.exit

padctl_writel.exit:                               ; preds = %if.then.i1, %padctl_readl.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %13, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %11) #7, !srcloc !174
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %15, i32 28
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #7, !srcloc !170
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_xusb_padctl_disable, %if.then.i6)) #7
          to label %padctl_readl.exit7 [label %if.then.i6], !srcloc !172

if.then.i6:                                       ; preds = %padctl_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %19, ptr noundef nonnull @.str.11, i32 noundef 28, i32 noundef %17) #7
  br label %padctl_readl.exit7

padctl_readl.exit7:                               ; preds = %if.then.i6, %padctl_writel.exit
  %or27 = or i32 %17, 33554432
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_xusb_padctl_disable, %if.then.i8)) #7
          to label %padctl_writel.exit11 [label %if.then.i8], !srcloc !172

if.then.i8:                                       ; preds = %padctl_readl.exit7
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %21, ptr noundef nonnull @.str.13, i32 noundef 28, i32 noundef %or27) #7
  br label %padctl_writel.exit11

padctl_writel.exit11:                             ; preds = %if.then.i8, %padctl_readl.exit7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %or27) #7
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %24, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %22) #7, !srcloc !174
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %26, i32 28
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #7, !srcloc !170
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_xusb_padctl_disable, %if.then.i14)) #7
          to label %padctl_readl.exit15 [label %if.then.i14], !srcloc !172

if.then.i14:                                      ; preds = %padctl_writel.exit11
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %30, ptr noundef nonnull @.str.11, i32 noundef 28, i32 noundef %28) #7
  br label %padctl_readl.exit15

padctl_readl.exit15:                              ; preds = %if.then.i14, %padctl_writel.exit11
  %or29 = or i32 %28, 16777216
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_xusb_padctl_disable, %if.then.i16)) #7
          to label %padctl_writel.exit19 [label %if.then.i16], !srcloc !172

if.then.i16:                                      ; preds = %padctl_readl.exit15
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %32, ptr noundef nonnull @.str.13, i32 noundef 28, i32 noundef %or29) #7
  br label %padctl_writel.exit19

padctl_writel.exit19:                             ; preds = %if.then.i16, %padctl_readl.exit15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %33 = tail call i32 @llvm.bswap.i32(i32 %or29) #7
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %35, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %33) #7, !srcloc !174
  br label %out

out:                                              ; preds = %padctl_writel.exit19, %if.end21.critedge.out_crit_edge, %do.end
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_xusb_find_usb2_port(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra124_ulpi_pad_probe(ptr noundef %padctl, ptr noundef %soc, ptr noundef %np) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 960) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.tegra_xusb_pad, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tegra124_ulpi_lane_ops, ptr %ops, align 8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %soc, ptr %call7.i.i, align 8
  %call3 = tail call i32 @tegra_xusb_pad_init(ptr noundef nonnull %call7.i.i, ptr noundef %padctl, ptr noundef %np) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @tegra_xusb_pad_register(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @tegra124_ulpi_phy_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %unregister, label %if.end9

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i = getelementptr inbounds %struct.tegra_xusb_pad, ptr %call7.i.i, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  br label %cleanup

unregister:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %call7.i.i, i32 0, i32 4
  tail call void @device_unregister(ptr noundef %dev10) #7
  br label %out

out:                                              ; preds = %unregister, %if.then4
  %err.0 = phi i32 [ %call3, %if.then4 ], [ %call6, %unregister ]
  %4 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %out ], [ %call7.i.i, %if.end9 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra124_ulpi_pad_remove(ptr noundef %pad) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %pad) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra124_ulpi_lane_probe(ptr noundef %pad, ptr noundef %np, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 8
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pad, align 8
  %lanes = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lanes, align 4
  %arrayidx = getelementptr %struct.tegra_xusb_lane_soc, ptr %6, i32 %index
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx, ptr %call7.i.i, align 8
  %index5 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %index5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %index, ptr %index5, align 8
  %pad7 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %pad7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pad, ptr %pad7, align 4
  %np9 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %np9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %np, ptr %np9, align 8
  %call11 = tail call i32 @tegra_xusb_lane_parse_dt(ptr noundef nonnull %call7.i.i, ptr noundef %np) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.then12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %11 = inttoptr i32 %call11 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %if.then12 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra124_ulpi_lane_remove(ptr noundef %lane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %lane) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_ulpi_phy_init(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pad = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad, align 4
  %padctl = getelementptr inbounds %struct.tegra_xusb_pad, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padctl, align 4
  tail call fastcc void @tegra124_xusb_padctl_enable(ptr noundef %5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_ulpi_phy_exit(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pad = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad, align 4
  %padctl = getelementptr inbounds %struct.tegra_xusb_pad, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padctl, align 4
  tail call fastcc void @tegra124_xusb_padctl_disable(ptr noundef %5)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra124_ulpi_phy_power_on(ptr nocapture noundef readnone %phy) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra124_ulpi_phy_power_off(ptr nocapture noundef readnone %phy) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra124_hsic_pad_probe(ptr noundef %padctl, ptr noundef %soc, ptr noundef %np) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 968) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.tegra_xusb_pad, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tegra124_hsic_lane_ops, ptr %ops, align 8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %soc, ptr %call7.i.i, align 8
  %call3 = tail call i32 @tegra_xusb_pad_init(ptr noundef nonnull %call7.i.i, ptr noundef %padctl, ptr noundef %np) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @tegra_xusb_pad_register(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @tegra124_hsic_phy_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %unregister, label %if.end9

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i = getelementptr inbounds %struct.tegra_xusb_pad, ptr %call7.i.i, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  br label %cleanup

unregister:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %call7.i.i, i32 0, i32 4
  tail call void @device_unregister(ptr noundef %dev10) #7
  br label %out

out:                                              ; preds = %unregister, %if.then4
  %err.0 = phi i32 [ %call3, %if.then4 ], [ %call6, %unregister ]
  %4 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %out ], [ %call7.i.i, %if.end9 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra124_hsic_pad_remove(ptr noundef %pad) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %pad) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra124_hsic_lane_probe(ptr noundef %pad, ptr noundef %np, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 8
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pad, align 8
  %lanes = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lanes, align 4
  %arrayidx = getelementptr %struct.tegra_xusb_lane_soc, ptr %6, i32 %index
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx, ptr %call7.i.i, align 8
  %index5 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %index5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %index, ptr %index5, align 8
  %pad7 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %pad7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pad, ptr %pad7, align 4
  %np9 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %np9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %np, ptr %np9, align 8
  %call11 = tail call i32 @tegra_xusb_lane_parse_dt(ptr noundef nonnull %call7.i.i, ptr noundef %np) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.then12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %11 = inttoptr i32 %call11 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %if.then12 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra124_hsic_lane_remove(ptr noundef %lane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %lane) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_hsic_phy_init(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pad = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad, align 4
  %padctl = getelementptr inbounds %struct.tegra_xusb_pad, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padctl, align 4
  tail call fastcc void @tegra124_xusb_padctl_enable(ptr noundef %5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_hsic_phy_exit(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pad = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad, align 4
  %padctl = getelementptr inbounds %struct.tegra_xusb_pad, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padctl, align 4
  tail call fastcc void @tegra124_xusb_padctl_disable(ptr noundef %5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_hsic_phy_power_on(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pad2 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pad2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad2, align 4
  %padctl5 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %padctl5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padctl5, align 4
  %index6 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %index6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index6, align 4
  %supply = getelementptr inbounds %struct.tegra_xusb_hsic_pad, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %supply, align 8
  %call7 = tail call i32 @regulator_enable(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %strobe_trim = getelementptr inbounds %struct.tegra_xusb_hsic_lane, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %strobe_trim to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %strobe_trim, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_hsic_phy_power_on, %if.then.i)) #7
          to label %padctl_writel.exit [label %if.then.i], !srcloc !172

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %13, ptr noundef nonnull @.str.13, i32 noundef 224, i32 noundef %11) #7
  br label %padctl_writel.exit

padctl_writel.exit:                               ; preds = %if.then.i, %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #7, !srcloc !174
  %mul = shl i32 %7, 2
  %add = add i32 %mul, 200
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %18, i32 %add
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #7, !srcloc !170
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_hsic_phy_power_on, %if.then.i89)) #7
          to label %padctl_readl.exit [label %if.then.i89], !srcloc !172

if.then.i89:                                      ; preds = %padctl_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %22, ptr noundef nonnull @.str.11, i32 noundef %add, i32 noundef %20) #7
  br label %padctl_readl.exit

padctl_readl.exit:                                ; preds = %if.then.i89, %padctl_writel.exit
  %auto_term = getelementptr inbounds %struct.tegra_xusb_hsic_lane, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %auto_term to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %auto_term, align 4, !range !176
  %and = and i32 %20, -2
  %25 = zext i8 %24 to i32
  %value.0 = or i32 %and, %25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_hsic_phy_power_on, %if.then.i90)) #7
          to label %padctl_writel.exit93 [label %if.then.i90], !srcloc !172

if.then.i90:                                      ; preds = %padctl_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %27, ptr noundef nonnull @.str.13, i32 noundef %add, i32 noundef %value.0) #7
  br label %padctl_writel.exit93

padctl_writel.exit93:                             ; preds = %if.then.i90, %padctl_readl.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %28 = tail call i32 @llvm.bswap.i32(i32 %value.0) #7
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %30, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %28) #7, !srcloc !174
  %add15 = add i32 %mul, 192
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %32, i32 %add15
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #7, !srcloc !170
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_hsic_phy_power_on, %if.then.i96)) #7
          to label %padctl_readl.exit97 [label %if.then.i96], !srcloc !172

if.then.i96:                                      ; preds = %padctl_writel.exit93
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %36, ptr noundef nonnull @.str.11, i32 noundef %add15, i32 noundef %34) #7
  br label %padctl_readl.exit97

padctl_readl.exit97:                              ; preds = %if.then.i96, %padctl_writel.exit93
  %and17 = and i32 %34, -30584
  %tx_rtune_n = getelementptr inbounds %struct.tegra_xusb_hsic_lane, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %tx_rtune_n to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_rtune_n, align 4
  %shl = shl i32 %38, 4
  %tx_rtune_p = getelementptr inbounds %struct.tegra_xusb_hsic_lane, ptr %1, i32 0, i32 5
  %39 = ptrtoint ptr %tx_rtune_p to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_rtune_p, align 4
  %tx_rslew_n = getelementptr inbounds %struct.tegra_xusb_hsic_lane, ptr %1, i32 0, i32 6
  %41 = ptrtoint ptr %tx_rslew_n to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_rslew_n, align 4
  %shl20 = shl i32 %42, 12
  %tx_rslew_p = getelementptr inbounds %struct.tegra_xusb_hsic_lane, ptr %1, i32 0, i32 7
  %43 = ptrtoint ptr %tx_rslew_p to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_rslew_p, align 4
  %shl22 = shl i32 %44, 8
  %or19 = or i32 %40, %and17
  %or21 = or i32 %or19, %shl
  %or23 = or i32 %or21, %shl20
  %or24 = or i32 %or23, %shl22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_hsic_phy_power_on, %if.then.i98)) #7
          to label %padctl_writel.exit101 [label %if.then.i98], !srcloc !172

if.then.i98:                                      ; preds = %padctl_readl.exit97
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %46, ptr noundef nonnull @.str.13, i32 noundef %add15, i32 noundef %or24) #7
  br label %padctl_writel.exit101

padctl_writel.exit101:                            ; preds = %if.then.i98, %padctl_readl.exit97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %47 = tail call i32 @llvm.bswap.i32(i32 %or24) #7
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %add.ptr.i100 = getelementptr i8, ptr %49, i32 %add15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 %47) #7, !srcloc !174
  %add28 = add i32 %mul, 208
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %add.ptr.i103 = getelementptr i8, ptr %51, i32 %add28
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103) #7, !srcloc !170
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_hsic_phy_power_on, %if.then.i104)) #7
          to label %padctl_readl.exit105 [label %if.then.i104], !srcloc !172

if.then.i104:                                     ; preds = %padctl_writel.exit101
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %55, ptr noundef nonnull @.str.11, i32 noundef %add28, i32 noundef %53) #7
  br label %padctl_readl.exit105

padctl_readl.exit105:                             ; preds = %if.then.i104, %padctl_writel.exit101
  %and30 = and i32 %53, -120
  %rx_strobe_trim = getelementptr inbounds %struct.tegra_xusb_hsic_lane, ptr %1, i32 0, i32 2
  %56 = ptrtoint ptr %rx_strobe_trim to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_strobe_trim, align 4
  %shl31 = shl i32 %57, 4
  %rx_data_trim = getelementptr inbounds %struct.tegra_xusb_hsic_lane, ptr %1, i32 0, i32 3
  %58 = ptrtoint ptr %rx_data_trim to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_data_trim, align 4
  %or33 = or i32 %59, %and30
  %or34 = or i32 %or33, %shl31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_hsic_phy_power_on, %if.then.i106)) #7
          to label %padctl_writel.exit109 [label %if.then.i106], !srcloc !172

if.then.i106:                                     ; preds = %padctl_readl.exit105
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %61, ptr noundef nonnull @.str.13, i32 noundef %add28, i32 noundef %or34) #7
  br label %padctl_writel.exit109

padctl_writel.exit109:                            ; preds = %if.then.i106, %padctl_readl.exit105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %62 = tail call i32 @llvm.bswap.i32(i32 %or34) #7
  %63 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i, align 4
  %add.ptr.i108 = getelementptr i8, ptr %64, i32 %add28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %62) #7, !srcloc !174
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %66, i32 %add
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #7, !srcloc !170
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_hsic_phy_power_on, %if.then.i112)) #7
          to label %padctl_readl.exit113 [label %if.then.i112], !srcloc !172

if.then.i112:                                     ; preds = %padctl_writel.exit109
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %70, ptr noundef nonnull @.str.11, i32 noundef %add, i32 noundef %68) #7
  br label %padctl_readl.exit113

padctl_readl.exit113:                             ; preds = %if.then.i112, %padctl_writel.exit109
  %and40 = and i32 %68, -1981
  %or41 = or i32 %and40, 1152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_hsic_phy_power_on, %if.then.i114)) #7
          to label %padctl_writel.exit117 [label %if.then.i114], !srcloc !172

if.then.i114:                                     ; preds = %padctl_readl.exit113
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %72, ptr noundef nonnull @.str.13, i32 noundef %add, i32 noundef %or41) #7
  br label %padctl_writel.exit117

padctl_writel.exit117:                            ; preds = %if.then.i114, %padctl_readl.exit113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %73 = tail call i32 @llvm.bswap.i32(i32 %or41) #7
  %74 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %75, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %73) #7, !srcloc !174
  br label %cleanup

cleanup:                                          ; preds = %padctl_writel.exit117, %entry.cleanup_crit_edge
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_hsic_phy_power_off(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pad1 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pad1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad1, align 4
  %padctl4 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %padctl4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padctl4, align 4
  %index5 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %index5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index5, align 4
  %mul = shl i32 %7, 2
  %add = add i32 %mul, 200
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !170
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_hsic_phy_power_off, %if.then.i)) #7
          to label %padctl_readl.exit [label %if.then.i], !srcloc !172

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %13, ptr noundef nonnull @.str.11, i32 noundef %add, i32 noundef %11) #7
  br label %padctl_readl.exit

padctl_readl.exit:                                ; preds = %if.then.i, %entry
  %or = or i32 %11, 60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_hsic_phy_power_off, %if.then.i15)) #7
          to label %padctl_writel.exit [label %if.then.i15], !srcloc !172

if.then.i15:                                      ; preds = %padctl_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %15, ptr noundef nonnull @.str.13, i32 noundef %add, i32 noundef %or) #7
  br label %padctl_writel.exit

padctl_writel.exit:                               ; preds = %if.then.i15, %padctl_readl.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %18, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %16) #7, !srcloc !174
  %supply = getelementptr inbounds %struct.tegra_xusb_hsic_pad, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %supply, align 8
  %call9 = tail call i32 @regulator_disable(ptr noundef %20) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra124_pcie_pad_probe(ptr noundef %padctl, ptr noundef %soc, ptr noundef %np) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 976) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.tegra_xusb_pad, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tegra124_pcie_lane_ops, ptr %ops, align 8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %soc, ptr %call7.i.i, align 8
  %call3 = tail call i32 @tegra_xusb_pad_init(ptr noundef nonnull %call7.i.i, ptr noundef %padctl, ptr noundef %np) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @tegra_xusb_pad_register(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @tegra124_pcie_phy_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %unregister, label %if.end9

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i = getelementptr inbounds %struct.tegra_xusb_pad, ptr %call7.i.i, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  br label %cleanup

unregister:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %call7.i.i, i32 0, i32 4
  tail call void @device_unregister(ptr noundef %dev10) #7
  br label %out

out:                                              ; preds = %unregister, %if.then4
  %err.0 = phi i32 [ %call3, %if.then4 ], [ %call6, %unregister ]
  %4 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %out ], [ %call7.i.i, %if.end9 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra124_pcie_pad_remove(ptr noundef %pad) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %pad) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra124_pcie_lane_probe(ptr noundef %pad, ptr noundef %np, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 8
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pad, align 8
  %lanes = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lanes, align 4
  %arrayidx = getelementptr %struct.tegra_xusb_lane_soc, ptr %6, i32 %index
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx, ptr %call7.i.i, align 8
  %index5 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %index5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %index, ptr %index5, align 8
  %pad7 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %pad7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pad, ptr %pad7, align 4
  %np9 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %np9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %np, ptr %np9, align 8
  %call11 = tail call i32 @tegra_xusb_lane_parse_dt(ptr noundef nonnull %call7.i.i, ptr noundef %np) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.then12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %11 = inttoptr i32 %call11 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %if.then12 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra124_pcie_lane_remove(ptr noundef %lane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %lane) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_pcie_phy_init(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pad = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad, align 4
  %padctl = getelementptr inbounds %struct.tegra_xusb_pad, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padctl, align 4
  tail call fastcc void @tegra124_xusb_padctl_enable(ptr noundef %5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_pcie_phy_exit(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pad = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad, align 4
  %padctl = getelementptr inbounds %struct.tegra_xusb_pad, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padctl, align 4
  tail call fastcc void @tegra124_xusb_padctl_disable(ptr noundef %5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_pcie_phy_power_on(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pad = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad, align 4
  %padctl1 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %padctl1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padctl1, align 4
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !170
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_pcie_phy_power_on, %if.then.i)) #7
          to label %padctl_readl.exit [label %if.then.i], !srcloc !172

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %11, ptr noundef nonnull @.str.11, i32 noundef 64, i32 noundef %9) #7
  br label %padctl_readl.exit

padctl_readl.exit:                                ; preds = %if.then.i, %entry
  %and = and i32 %9, -61441
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_pcie_phy_power_on, %if.then.i29)) #7
          to label %padctl_writel.exit [label %if.then.i29], !srcloc !172

if.then.i29:                                      ; preds = %padctl_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %13, ptr noundef nonnull @.str.13, i32 noundef 64, i32 noundef %and) #7
  br label %padctl_writel.exit

padctl_writel.exit:                               ; preds = %if.then.i29, %padctl_readl.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %16, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %14) #7, !srcloc !174
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %18, i32 68
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #7, !srcloc !170
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_pcie_phy_power_on, %if.then.i34)) #7
          to label %padctl_readl.exit35 [label %if.then.i34], !srcloc !172

if.then.i34:                                      ; preds = %padctl_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %22, ptr noundef nonnull @.str.11, i32 noundef 68, i32 noundef %20) #7
  br label %padctl_readl.exit35

padctl_readl.exit35:                              ; preds = %if.then.i34, %padctl_writel.exit
  %or = or i32 %20, 112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_pcie_phy_power_on, %if.then.i36)) #7
          to label %padctl_writel.exit39 [label %if.then.i36], !srcloc !172

if.then.i36:                                      ; preds = %padctl_readl.exit35
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %24, ptr noundef nonnull @.str.13, i32 noundef 68, i32 noundef %or) #7
  br label %padctl_writel.exit39

padctl_writel.exit39:                             ; preds = %if.then.i36, %padctl_readl.exit35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %27, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %25) #7, !srcloc !174
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %29, i32 64
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #7, !srcloc !170
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_pcie_phy_power_on, %if.then.i42)) #7
          to label %padctl_readl.exit43 [label %if.then.i42], !srcloc !172

if.then.i42:                                      ; preds = %padctl_writel.exit39
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %33, ptr noundef nonnull @.str.11, i32 noundef 64, i32 noundef %31) #7
  br label %padctl_readl.exit43

padctl_readl.exit43:                              ; preds = %if.then.i42, %padctl_writel.exit39
  %or5 = or i32 %31, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_pcie_phy_power_on, %if.then.i44)) #7
          to label %padctl_writel.exit47 [label %if.then.i44], !srcloc !172

if.then.i44:                                      ; preds = %padctl_readl.exit43
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %35, ptr noundef nonnull @.str.13, i32 noundef 64, i32 noundef %or5) #7
  br label %padctl_writel.exit47

padctl_writel.exit47:                             ; preds = %if.then.i44, %padctl_readl.exit43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %36 = tail call i32 @llvm.bswap.i32(i32 %or5) #7
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %38, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %36) #7, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -5, %39
  %40 = load volatile i32, ptr @jiffies, align 128
  %sub60 = add i32 %add.neg, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub60)
  %cmp61 = icmp slt i32 %sub60, 0
  br i1 %cmp61, label %padctl_writel.exit47.while.body_crit_edge, label %padctl_writel.exit47.while.end_crit_edge

padctl_writel.exit47.while.end_crit_edge:         ; preds = %padctl_writel.exit47
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

padctl_writel.exit47.while.body_crit_edge:        ; preds = %padctl_writel.exit47
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %padctl_writel.exit47.while.body_crit_edge
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %42, i32 64
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #7, !srcloc !170
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_pcie_phy_power_on, %if.then.i50)) #7
          to label %padctl_readl.exit51 [label %if.then.i50], !srcloc !172

if.then.i50:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %46, ptr noundef nonnull @.str.11, i32 noundef 64, i32 noundef %44) #7
  br label %padctl_readl.exit51

padctl_readl.exit51:                              ; preds = %if.then.i50, %while.body
  %and8 = and i32 %44, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %if.end, label %padctl_readl.exit51.while.end_crit_edge

padctl_readl.exit51.while.end_crit_edge:          ; preds = %padctl_readl.exit51
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end:                                           ; preds = %padctl_readl.exit51
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %47
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %padctl_readl.exit51.while.end_crit_edge, %padctl_writel.exit47.while.end_crit_edge
  %err.0 = phi i32 [ -110, %padctl_writel.exit47.while.end_crit_edge ], [ 0, %padctl_readl.exit51.while.end_crit_edge ], [ -110, %if.end.while.end_crit_edge ]
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %49, i32 308
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #7, !srcloc !170
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_pcie_phy_power_on, %if.then.i54)) #7
          to label %padctl_readl.exit55 [label %if.then.i54], !srcloc !172

if.then.i54:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %53, ptr noundef nonnull @.str.11, i32 noundef 308, i32 noundef %51) #7
  br label %padctl_readl.exit55

padctl_readl.exit55:                              ; preds = %if.then.i54, %while.end
  %index = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 5
  %54 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %index, align 4
  %add10 = add i32 %55, 1
  %shl = shl nuw i32 1, %add10
  %or11 = or i32 %shl, %51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_pcie_phy_power_on, %if.then.i56)) #7
          to label %padctl_writel.exit59 [label %if.then.i56], !srcloc !172

if.then.i56:                                      ; preds = %padctl_readl.exit55
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %57, ptr noundef nonnull @.str.13, i32 noundef 308, i32 noundef %or11) #7
  br label %padctl_writel.exit59

padctl_writel.exit59:                             ; preds = %if.then.i56, %padctl_readl.exit55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %58 = tail call i32 @llvm.bswap.i32(i32 %or11) #7
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %60, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %58) #7, !srcloc !174
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_pcie_phy_power_off(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pad = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad, align 4
  %padctl1 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %padctl1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padctl1, align 4
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 308
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !170
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_pcie_phy_power_off, %if.then.i)) #7
          to label %padctl_readl.exit [label %if.then.i], !srcloc !172

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %11, ptr noundef nonnull @.str.11, i32 noundef 308, i32 noundef %9) #7
  br label %padctl_readl.exit

padctl_readl.exit:                                ; preds = %if.then.i, %entry
  %index = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %add = add i32 %13, 1
  %shl = shl nuw i32 1, %add
  %neg = xor i32 %shl, -1
  %and = and i32 %9, %neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_pcie_phy_power_off, %if.then.i12)) #7
          to label %padctl_writel.exit [label %if.then.i12], !srcloc !172

if.then.i12:                                      ; preds = %padctl_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %15, ptr noundef nonnull @.str.13, i32 noundef 308, i32 noundef %and) #7
  br label %padctl_writel.exit

padctl_writel.exit:                               ; preds = %if.then.i12, %padctl_readl.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %18, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %16) #7, !srcloc !174
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %20, i32 64
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #7, !srcloc !170
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_pcie_phy_power_off, %if.then.i17)) #7
          to label %padctl_readl.exit18 [label %if.then.i17], !srcloc !172

if.then.i17:                                      ; preds = %padctl_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %24, ptr noundef nonnull @.str.11, i32 noundef 64, i32 noundef %22) #7
  br label %padctl_readl.exit18

padctl_readl.exit18:                              ; preds = %if.then.i17, %padctl_writel.exit
  %and4 = and i32 %22, -3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_pcie_phy_power_off, %if.then.i19)) #7
          to label %padctl_writel.exit22 [label %if.then.i19], !srcloc !172

if.then.i19:                                      ; preds = %padctl_readl.exit18
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %26, ptr noundef nonnull @.str.13, i32 noundef 64, i32 noundef %and4) #7
  br label %padctl_writel.exit22

padctl_writel.exit22:                             ; preds = %if.then.i19, %padctl_readl.exit18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %and4) #7
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %29, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %27) #7, !srcloc !174
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra124_sata_pad_probe(ptr noundef %padctl, ptr noundef %soc, ptr noundef %np) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 976) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.tegra_xusb_pad, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tegra124_sata_lane_ops, ptr %ops, align 8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %soc, ptr %call7.i.i, align 8
  %call3 = tail call i32 @tegra_xusb_pad_init(ptr noundef nonnull %call7.i.i, ptr noundef %padctl, ptr noundef %np) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @tegra_xusb_pad_register(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @tegra124_sata_phy_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %unregister, label %if.end9

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i = getelementptr inbounds %struct.tegra_xusb_pad, ptr %call7.i.i, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  br label %cleanup

unregister:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %call7.i.i, i32 0, i32 4
  tail call void @device_unregister(ptr noundef %dev10) #7
  br label %out

out:                                              ; preds = %unregister, %if.then4
  %err.0 = phi i32 [ %call3, %if.then4 ], [ %call6, %unregister ]
  %4 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %out ], [ %call7.i.i, %if.end9 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra124_sata_pad_remove(ptr noundef %pad) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %pad) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra124_sata_lane_probe(ptr noundef %pad, ptr noundef %np, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 8
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pad, align 8
  %lanes = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lanes, align 4
  %arrayidx = getelementptr %struct.tegra_xusb_lane_soc, ptr %6, i32 %index
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx, ptr %call7.i.i, align 8
  %index5 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %index5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %index, ptr %index5, align 8
  %pad7 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %pad7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pad, ptr %pad7, align 4
  %np9 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %np9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %np, ptr %np9, align 8
  %call11 = tail call i32 @tegra_xusb_lane_parse_dt(ptr noundef nonnull %call7.i.i, ptr noundef %np) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.then12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %11 = inttoptr i32 %call11 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %if.then12 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra124_sata_lane_remove(ptr noundef %lane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %lane) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_sata_phy_init(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pad = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad, align 4
  %padctl = getelementptr inbounds %struct.tegra_xusb_pad, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padctl, align 4
  tail call fastcc void @tegra124_xusb_padctl_enable(ptr noundef %5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_sata_phy_exit(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pad = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad, align 4
  %padctl = getelementptr inbounds %struct.tegra_xusb_pad, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padctl, align 4
  tail call fastcc void @tegra124_xusb_padctl_disable(ptr noundef %5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_sata_phy_power_on(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pad = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad, align 4
  %padctl1 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %padctl1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padctl1, align 4
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 328
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !170
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_on, %if.then.i)) #7
          to label %padctl_readl.exit [label %if.then.i], !srcloc !172

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %11, ptr noundef nonnull @.str.11, i32 noundef 328, i32 noundef %9) #7
  br label %padctl_readl.exit

padctl_readl.exit:                                ; preds = %if.then.i, %entry
  %and3 = and i32 %9, -4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_on, %if.then.i39)) #7
          to label %padctl_writel.exit [label %if.then.i39], !srcloc !172

if.then.i39:                                      ; preds = %padctl_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %13, ptr noundef nonnull @.str.13, i32 noundef 328, i32 noundef %and3) #7
  br label %padctl_writel.exit

padctl_writel.exit:                               ; preds = %if.then.i39, %padctl_readl.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %and3) #7
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %16, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %14) #7, !srcloc !174
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %18, i32 312
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #7, !srcloc !170
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_on, %if.then.i44)) #7
          to label %padctl_readl.exit45 [label %if.then.i44], !srcloc !172

if.then.i44:                                      ; preds = %padctl_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %22, ptr noundef nonnull @.str.11, i32 noundef 312, i32 noundef %20) #7
  br label %padctl_readl.exit45

padctl_readl.exit45:                              ; preds = %if.then.i44, %padctl_writel.exit
  %and6 = and i32 %20, -10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_on, %if.then.i46)) #7
          to label %padctl_writel.exit49 [label %if.then.i46], !srcloc !172

if.then.i46:                                      ; preds = %padctl_readl.exit45
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %24, ptr noundef nonnull @.str.13, i32 noundef 312, i32 noundef %and6) #7
  br label %padctl_writel.exit49

padctl_writel.exit49:                             ; preds = %if.then.i46, %padctl_readl.exit45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %and6) #7
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %27, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %25) #7, !srcloc !174
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %29, i32 312
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #7, !srcloc !170
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_on, %if.then.i52)) #7
          to label %padctl_readl.exit53 [label %if.then.i52], !srcloc !172

if.then.i52:                                      ; preds = %padctl_writel.exit49
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %33, ptr noundef nonnull @.str.11, i32 noundef 312, i32 noundef %31) #7
  br label %padctl_readl.exit53

padctl_readl.exit53:                              ; preds = %if.then.i52, %padctl_writel.exit49
  %or = or i32 %31, 16777216
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_on, %if.then.i54)) #7
          to label %padctl_writel.exit57 [label %if.then.i54], !srcloc !172

if.then.i54:                                      ; preds = %padctl_readl.exit53
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %35, ptr noundef nonnull @.str.13, i32 noundef 312, i32 noundef %or) #7
  br label %padctl_writel.exit57

padctl_writel.exit57:                             ; preds = %if.then.i54, %padctl_readl.exit53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %36 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %38, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %36) #7, !srcloc !174
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %40, i32 312
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #7, !srcloc !170
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_on, %if.then.i60)) #7
          to label %padctl_readl.exit61 [label %if.then.i60], !srcloc !172

if.then.i60:                                      ; preds = %padctl_writel.exit57
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %44, ptr noundef nonnull @.str.11, i32 noundef 312, i32 noundef %42) #7
  br label %padctl_readl.exit61

padctl_readl.exit61:                              ; preds = %if.then.i60, %padctl_writel.exit57
  %or9 = or i32 %42, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_on, %if.then.i62)) #7
          to label %padctl_writel.exit65 [label %if.then.i62], !srcloc !172

if.then.i62:                                      ; preds = %padctl_readl.exit61
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %46, ptr noundef nonnull @.str.13, i32 noundef 312, i32 noundef %or9) #7
  br label %padctl_writel.exit65

padctl_writel.exit65:                             ; preds = %if.then.i62, %padctl_readl.exit61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %47 = tail call i32 @llvm.bswap.i32(i32 %or9) #7
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %49, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %47) #7, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -5, %50
  %51 = load volatile i32, ptr @jiffies, align 128
  %sub78 = add i32 %add.neg, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub78)
  %cmp79 = icmp slt i32 %sub78, 0
  br i1 %cmp79, label %padctl_writel.exit65.while.body_crit_edge, label %padctl_writel.exit65.while.end_crit_edge

padctl_writel.exit65.while.end_crit_edge:         ; preds = %padctl_writel.exit65
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

padctl_writel.exit65.while.body_crit_edge:        ; preds = %padctl_writel.exit65
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %padctl_writel.exit65.while.body_crit_edge
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %53, i32 312
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #7, !srcloc !170
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_on, %if.then.i68)) #7
          to label %padctl_readl.exit69 [label %if.then.i68], !srcloc !172

if.then.i68:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %57, ptr noundef nonnull @.str.11, i32 noundef 312, i32 noundef %55) #7
  br label %padctl_readl.exit69

padctl_readl.exit69:                              ; preds = %if.then.i68, %while.body
  %and12 = and i32 %55, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.end, label %padctl_readl.exit69.while.end_crit_edge

padctl_readl.exit69.while.end_crit_edge:          ; preds = %padctl_readl.exit69
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end:                                           ; preds = %padctl_readl.exit69
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %58
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %padctl_readl.exit69.while.end_crit_edge, %padctl_writel.exit65.while.end_crit_edge
  %err.0 = phi i32 [ -110, %padctl_writel.exit65.while.end_crit_edge ], [ 0, %padctl_readl.exit69.while.end_crit_edge ], [ -110, %if.end.while.end_crit_edge ]
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %60, i32 308
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #7, !srcloc !170
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_on, %if.then.i72)) #7
          to label %padctl_readl.exit73 [label %if.then.i72], !srcloc !172

if.then.i72:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %64, ptr noundef nonnull @.str.11, i32 noundef 308, i32 noundef %62) #7
  br label %padctl_readl.exit73

padctl_readl.exit73:                              ; preds = %if.then.i72, %while.end
  %index = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 5
  %65 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %index, align 4
  %add14 = add i32 %66, 6
  %shl = shl nuw i32 1, %add14
  %or15 = or i32 %shl, %62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_on, %if.then.i74)) #7
          to label %padctl_writel.exit77 [label %if.then.i74], !srcloc !172

if.then.i74:                                      ; preds = %padctl_readl.exit73
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %68, ptr noundef nonnull @.str.13, i32 noundef 308, i32 noundef %or15) #7
  br label %padctl_writel.exit77

padctl_writel.exit77:                             ; preds = %if.then.i74, %padctl_readl.exit73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %69 = tail call i32 @llvm.bswap.i32(i32 %or15) #7
  %70 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %71, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 %69) #7, !srcloc !174
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_sata_phy_power_off(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pad = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad, align 4
  %padctl1 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %padctl1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padctl1, align 4
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 308
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !170
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_off, %if.then.i)) #7
          to label %padctl_readl.exit [label %if.then.i], !srcloc !172

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %11, ptr noundef nonnull @.str.11, i32 noundef 308, i32 noundef %9) #7
  br label %padctl_readl.exit

padctl_readl.exit:                                ; preds = %if.then.i, %entry
  %index = getelementptr inbounds %struct.tegra_xusb_lane, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %add = add i32 %13, 6
  %shl = shl nuw i32 1, %add
  %neg = xor i32 %shl, -1
  %and = and i32 %9, %neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_off, %if.then.i33)) #7
          to label %padctl_writel.exit [label %if.then.i33], !srcloc !172

if.then.i33:                                      ; preds = %padctl_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %15, ptr noundef nonnull @.str.13, i32 noundef 308, i32 noundef %and) #7
  br label %padctl_writel.exit

padctl_writel.exit:                               ; preds = %if.then.i33, %padctl_readl.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %18, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %16) #7, !srcloc !174
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %20, i32 312
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #7, !srcloc !170
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_off, %if.then.i38)) #7
          to label %padctl_readl.exit39 [label %if.then.i38], !srcloc !172

if.then.i38:                                      ; preds = %padctl_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %24, ptr noundef nonnull @.str.11, i32 noundef 312, i32 noundef %22) #7
  br label %padctl_readl.exit39

padctl_readl.exit39:                              ; preds = %if.then.i38, %padctl_writel.exit
  %and4 = and i32 %22, -3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_off, %if.then.i40)) #7
          to label %padctl_writel.exit43 [label %if.then.i40], !srcloc !172

if.then.i40:                                      ; preds = %padctl_readl.exit39
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %26, ptr noundef nonnull @.str.13, i32 noundef 312, i32 noundef %and4) #7
  br label %padctl_writel.exit43

padctl_writel.exit43:                             ; preds = %if.then.i40, %padctl_readl.exit39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %and4) #7
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %29, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %27) #7, !srcloc !174
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %31, i32 312
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #7, !srcloc !170
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_off, %if.then.i46)) #7
          to label %padctl_readl.exit47 [label %if.then.i46], !srcloc !172

if.then.i46:                                      ; preds = %padctl_writel.exit43
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %35, ptr noundef nonnull @.str.11, i32 noundef 312, i32 noundef %33) #7
  br label %padctl_readl.exit47

padctl_readl.exit47:                              ; preds = %if.then.i46, %padctl_writel.exit43
  %and6 = and i32 %33, -16777217
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_off, %if.then.i48)) #7
          to label %padctl_writel.exit51 [label %if.then.i48], !srcloc !172

if.then.i48:                                      ; preds = %padctl_readl.exit47
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %37, ptr noundef nonnull @.str.13, i32 noundef 312, i32 noundef %and6) #7
  br label %padctl_writel.exit51

padctl_writel.exit51:                             ; preds = %if.then.i48, %padctl_readl.exit47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %38 = tail call i32 @llvm.bswap.i32(i32 %and6) #7
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %40, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %38) #7, !srcloc !174
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %42, i32 312
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #7, !srcloc !170
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_off, %if.then.i54)) #7
          to label %padctl_readl.exit55 [label %if.then.i54], !srcloc !172

if.then.i54:                                      ; preds = %padctl_writel.exit51
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %46, ptr noundef nonnull @.str.11, i32 noundef 312, i32 noundef %44) #7
  br label %padctl_readl.exit55

padctl_readl.exit55:                              ; preds = %if.then.i54, %padctl_writel.exit51
  %or8 = or i32 %44, 9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_off, %if.then.i56)) #7
          to label %padctl_writel.exit59 [label %if.then.i56], !srcloc !172

if.then.i56:                                      ; preds = %padctl_readl.exit55
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %48, ptr noundef nonnull @.str.13, i32 noundef 312, i32 noundef %or8) #7
  br label %padctl_writel.exit59

padctl_writel.exit59:                             ; preds = %if.then.i56, %padctl_readl.exit55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %49 = tail call i32 @llvm.bswap.i32(i32 %or8) #7
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %51, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %49) #7, !srcloc !174
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %53, i32 328
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_off, %if.then.i62)) #7
          to label %padctl_readl.exit63 [label %if.then.i62], !srcloc !172

if.then.i62:                                      ; preds = %padctl_writel.exit59
  call void @__sanitizer_cov_trace_pc() #9
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %57, ptr noundef nonnull @.str.11, i32 noundef 328, i32 noundef %55) #7
  br label %padctl_readl.exit63

padctl_readl.exit63:                              ; preds = %if.then.i62, %padctl_writel.exit59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_sata_phy_power_off, %if.then.i64)) #7
          to label %padctl_writel.exit67 [label %if.then.i64], !srcloc !172

if.then.i64:                                      ; preds = %padctl_readl.exit63
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %59, ptr noundef nonnull @.str.13, i32 noundef 328, i32 noundef -1) #7
  br label %padctl_writel.exit67

padctl_writel.exit67:                             ; preds = %if.then.i64, %padctl_readl.exit63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %61, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 -1) #7, !srcloc !174
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_xusb_usb2_port_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_xusb_usb2_port_remove(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra124_usb2_port_enable(ptr nocapture noundef readnone %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tegra124_usb2_port_disable(ptr nocapture noundef %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra124_usb2_port_map(ptr nocapture noundef readonly %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %index = getelementptr inbounds %struct.tegra_xusb_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 8
  %call = tail call ptr @tegra_xusb_find_lane(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %3) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_xusb_find_lane(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_xusb_ulpi_port_release(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra124_ulpi_port_enable(ptr nocapture noundef readnone %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tegra124_ulpi_port_disable(ptr nocapture noundef %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra124_ulpi_port_map(ptr nocapture noundef readonly %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %index = getelementptr inbounds %struct.tegra_xusb_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 8
  %call = tail call ptr @tegra_xusb_find_lane(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %3) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_xusb_hsic_port_release(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra124_hsic_port_enable(ptr nocapture noundef readnone %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tegra124_hsic_port_disable(ptr nocapture noundef %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra124_hsic_port_map(ptr nocapture noundef readonly %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %index = getelementptr inbounds %struct.tegra_xusb_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 8
  %call = tail call ptr @tegra_xusb_find_lane(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %3) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_xusb_usb3_port_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_xusb_usb3_port_remove(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_usb3_port_enable(ptr nocapture noundef readonly %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %lane2 = getelementptr inbounds %struct.tegra_xusb_port, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %lane2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lane2, align 4
  %index3 = getelementptr inbounds %struct.tegra_xusb_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index3, align 8
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !170
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i)) #7
          to label %padctl_readl.exit [label %if.then.i], !srcloc !172

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %11, ptr noundef nonnull @.str.11, i32 noundef 20, i32 noundef %9) #7
  br label %padctl_readl.exit

padctl_readl.exit:                                ; preds = %if.then.i, %entry
  %internal = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %port, i32 0, i32 4
  %12 = ptrtoint ptr %internal to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %internal, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %mul = shl i32 %5, 2
  %add = or i32 %mul, 3
  %shl = shl nuw i32 1, %add
  %or = or i32 %9, %shl
  %neg = xor i32 %shl, -1
  %and = and i32 %9, %neg
  %value.0 = select i1 %tobool.not, i32 %and, i32 %or
  %shl9 = shl i32 7, %mul
  %neg10 = xor i32 %shl9, -1
  %and11 = and i32 %value.0, %neg10
  %port12 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %port, i32 0, i32 3
  %14 = ptrtoint ptr %port12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port12, align 8
  %and13 = and i32 %15, 7
  %shl15 = shl i32 %and13, %mul
  %or16 = or i32 %shl15, %and11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i193)) #7
          to label %padctl_writel.exit [label %if.then.i193], !srcloc !172

if.then.i193:                                     ; preds = %padctl_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %17, ptr noundef nonnull @.str.13, i32 noundef 20, i32 noundef %or16) #7
  br label %padctl_writel.exit

padctl_writel.exit:                               ; preds = %if.then.i193, %padctl_readl.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %or16) #7
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i195 = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i195, i32 %18) #7, !srcloc !174
  %add18 = add i32 %mul, 88
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i197 = getelementptr i8, ptr %22, i32 %add18
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197) #7, !srcloc !170
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i198)) #7
          to label %padctl_readl.exit199 [label %if.then.i198], !srcloc !172

if.then.i198:                                     ; preds = %padctl_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %26, ptr noundef nonnull @.str.11, i32 noundef %add18, i32 noundef %24) #7
  br label %padctl_readl.exit199

padctl_readl.exit199:                             ; preds = %if.then.i198, %padctl_writel.exit
  %and20 = and i32 %24, 15
  %or21 = or i32 %and20, 619737328
  %context_saved = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %port, i32 0, i32 2
  %27 = ptrtoint ptr %context_saved to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %context_saved, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool22.not = icmp eq i8 %28, 0
  br i1 %tobool22.not, label %padctl_readl.exit199.if.end29_crit_edge, label %if.then23

padctl_readl.exit199.if.end29_crit_edge:          ; preds = %padctl_readl.exit199
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then23:                                        ; preds = %padctl_readl.exit199
  call void @__sanitizer_cov_trace_pc() #9
  %ctle_g = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %port, i32 0, i32 9
  %29 = ptrtoint ptr %ctle_g to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ctle_g, align 4
  %shl25 = shl i32 %30, 8
  %ctle_z = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %port, i32 0, i32 8
  %31 = ptrtoint ptr %ctle_z to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ctle_z, align 8
  %shl26 = shl i32 %32, 16
  %or27 = or i32 %and20, %shl25
  %and24 = or i32 %or27, %shl26
  %or28 = or i32 %and24, 616579312
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %padctl_readl.exit199.if.end29_crit_edge
  %value.1 = phi i32 [ %or28, %if.then23 ], [ %or21, %padctl_readl.exit199.if.end29_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i200)) #7
          to label %padctl_writel.exit203 [label %if.then.i200], !srcloc !172

if.then.i200:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %34, ptr noundef nonnull @.str.13, i32 noundef %add18, i32 noundef %value.1) #7
  br label %padctl_writel.exit203

padctl_writel.exit203:                            ; preds = %if.then.i200, %if.end29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %value.1) #7
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %add.ptr.i202 = getelementptr i8, ptr %37, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202, i32 %35) #7, !srcloc !174
  %38 = ptrtoint ptr %context_saved to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %context_saved, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool33.not = icmp eq i8 %39, 0
  br i1 %tobool33.not, label %padctl_writel.exit203.if.end40_crit_edge, label %if.then34

padctl_writel.exit203.if.end40_crit_edge:         ; preds = %padctl_writel.exit203
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then34:                                        ; preds = %padctl_writel.exit203
  call void @__sanitizer_cov_trace_pc() #9
  %tap1 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %port, i32 0, i32 6
  %40 = ptrtoint ptr %tap1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tap1, align 8
  %shl36 = shl i32 %41, 24
  %amp = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %port, i32 0, i32 7
  %42 = ptrtoint ptr %amp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %amp, align 4
  %shl37 = shl i32 %43, 16
  %or38 = or i32 %shl36, %shl37
  %or39 = or i32 %or38, 2286
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %padctl_writel.exit203.if.end40_crit_edge
  %value.2 = phi i32 [ %or39, %if.then34 ], [ 2099438, %padctl_writel.exit203.if.end40_crit_edge ]
  %add42 = add i32 %mul, 104
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i204)) #7
          to label %padctl_writel.exit207 [label %if.then.i204], !srcloc !172

if.then.i204:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %45, ptr noundef nonnull @.str.13, i32 noundef %add42, i32 noundef %value.2) #7
  br label %padctl_writel.exit207

padctl_writel.exit207:                            ; preds = %if.then.i204, %if.end40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %46 = tail call i32 @llvm.bswap.i32(i32 %value.2) #7
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 4
  %add.ptr.i206 = getelementptr i8, ptr %48, i32 %add42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 %46) #7, !srcloc !174
  %pad = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 1
  %49 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pad, align 4
  %pcie = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %1, i32 0, i32 5
  %51 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pcie, align 4
  %cmp = icmp eq ptr %50, %52
  br i1 %cmp, label %if.then43, label %padctl_writel.exit207.if.end53_crit_edge

padctl_writel.exit207.if.end53_crit_edge:         ; preds = %padctl_writel.exit207
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then43:                                        ; preds = %padctl_writel.exit207
  call void @__sanitizer_cov_trace_pc() #9
  %index44 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 5
  %53 = ptrtoint ptr %index44 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %index44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp45 = icmp ult i32 %54, 2
  %mul47 = shl i32 %54, 2
  %cond.v = select i1 %cmp45, i32 120, i32 248
  %cond = add i32 %cond.v, %mul47
  br label %if.end53

if.end53:                                         ; preds = %if.then43, %padctl_writel.exit207.if.end53_crit_edge
  %offset.0 = phi i32 [ %cond, %if.then43 ], [ 332, %padctl_writel.exit207.if.end53_crit_edge ]
  %55 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i, align 4
  %add.ptr.i209 = getelementptr i8, ptr %56, i32 %offset.0
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i209) #7, !srcloc !170
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i210)) #7
          to label %padctl_readl.exit211 [label %if.then.i210], !srcloc !172

if.then.i210:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %60, ptr noundef nonnull @.str.11, i32 noundef %offset.0, i32 noundef %58) #7
  br label %padctl_readl.exit211

padctl_readl.exit211:                             ; preds = %if.then.i210, %if.end53
  %and55 = and i32 %58, -805306369
  %or56 = or i32 %and55, 268435456
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i212)) #7
          to label %padctl_writel.exit215 [label %if.then.i212], !srcloc !172

if.then.i212:                                     ; preds = %padctl_readl.exit211
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %62, ptr noundef nonnull @.str.13, i32 noundef %offset.0, i32 noundef %or56) #7
  br label %padctl_writel.exit215

padctl_writel.exit215:                            ; preds = %if.then.i212, %padctl_readl.exit211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %63 = tail call i32 @llvm.bswap.i32(i32 %or56) #7
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 4
  %add.ptr.i214 = getelementptr i8, ptr %65, i32 %offset.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i214, i32 %63) #7, !srcloc !174
  %66 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pad, align 4
  %68 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pcie, align 4
  %cmp59 = icmp eq ptr %67, %69
  br i1 %cmp59, label %if.then60, label %padctl_writel.exit215.if.end74_crit_edge

padctl_writel.exit215.if.end74_crit_edge:         ; preds = %padctl_writel.exit215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then60:                                        ; preds = %padctl_writel.exit215
  call void @__sanitizer_cov_trace_pc() #9
  %index61 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 5
  %70 = ptrtoint ptr %index61 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %index61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp62 = icmp ult i32 %71, 2
  %mul65 = shl i32 %71, 2
  %cond72.v = select i1 %cmp62, i32 144, i32 284
  %cond72 = add i32 %cond72.v, %mul65
  br label %if.end74

if.end74:                                         ; preds = %if.then60, %padctl_writel.exit215.if.end74_crit_edge
  %offset.1 = phi i32 [ %cond72, %if.then60 ], [ 344, %padctl_writel.exit215.if.end74_crit_edge ]
  %72 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i, align 4
  %add.ptr.i217 = getelementptr i8, ptr %73, i32 %offset.1
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i217) #7, !srcloc !170
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i218)) #7
          to label %padctl_readl.exit219 [label %if.then.i218], !srcloc !172

if.then.i218:                                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %77, ptr noundef nonnull @.str.11, i32 noundef %offset.1, i32 noundef %75) #7
  br label %padctl_readl.exit219

padctl_readl.exit219:                             ; preds = %if.then.i218, %if.end74
  %or76 = or i32 %75, 256
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i220)) #7
          to label %padctl_writel.exit223 [label %if.then.i220], !srcloc !172

if.then.i220:                                     ; preds = %padctl_readl.exit219
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %79, ptr noundef nonnull @.str.13, i32 noundef %offset.1, i32 noundef %or76) #7
  br label %padctl_writel.exit223

padctl_writel.exit223:                            ; preds = %if.then.i220, %padctl_readl.exit219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %80 = tail call i32 @llvm.bswap.i32(i32 %or76) #7
  %81 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i, align 4
  %add.ptr.i222 = getelementptr i8, ptr %82, i32 %offset.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222, i32 %80) #7, !srcloc !174
  %83 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pad, align 4
  %sata = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %1, i32 0, i32 6
  %85 = ptrtoint ptr %sata to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sata, align 4
  %cmp78 = icmp eq ptr %84, %86
  br i1 %cmp78, label %if.then79, label %padctl_writel.exit223.if.end88_crit_edge

padctl_writel.exit223.if.end88_crit_edge:         ; preds = %padctl_writel.exit223
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then79:                                        ; preds = %padctl_writel.exit223
  %87 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i, align 4
  %add.ptr.i225 = getelementptr i8, ptr %88, i32 312
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i225) #7, !srcloc !170
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i226)) #7
          to label %padctl_readl.exit227 [label %if.then.i226], !srcloc !172

if.then.i226:                                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %92, ptr noundef nonnull @.str.11, i32 noundef 312, i32 noundef %90) #7
  br label %padctl_readl.exit227

padctl_readl.exit227:                             ; preds = %if.then.i226, %if.then79
  %and81 = and i32 %90, -3145729
  %or82 = or i32 %and81, 2097152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i228)) #7
          to label %padctl_writel.exit231 [label %if.then.i228], !srcloc !172

if.then.i228:                                     ; preds = %padctl_readl.exit227
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %94, ptr noundef nonnull @.str.13, i32 noundef 312, i32 noundef %or82) #7
  br label %padctl_writel.exit231

padctl_writel.exit231:                            ; preds = %if.then.i228, %padctl_readl.exit227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %95 = tail call i32 @llvm.bswap.i32(i32 %or82) #7
  %96 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.i, align 4
  %add.ptr.i230 = getelementptr i8, ptr %97, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i230, i32 %95) #7, !srcloc !174
  %98 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs.i, align 4
  %add.ptr.i233 = getelementptr i8, ptr %99, i32 316
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i233) #7, !srcloc !170
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i234)) #7
          to label %padctl_readl.exit235 [label %if.then.i234], !srcloc !172

if.then.i234:                                     ; preds = %padctl_writel.exit231
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %103, ptr noundef nonnull @.str.11, i32 noundef 316, i32 noundef %101) #7
  br label %padctl_readl.exit235

padctl_readl.exit235:                             ; preds = %if.then.i234, %padctl_writel.exit231
  %and84 = and i32 %101, -16715800
  %or85 = or i32 %and84, 8912919
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i236)) #7
          to label %padctl_writel.exit239 [label %if.then.i236], !srcloc !172

if.then.i236:                                     ; preds = %padctl_readl.exit235
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %105, ptr noundef nonnull @.str.13, i32 noundef 316, i32 noundef %or85) #7
  br label %padctl_writel.exit239

padctl_writel.exit239:                            ; preds = %if.then.i236, %padctl_readl.exit235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %106 = tail call i32 @llvm.bswap.i32(i32 %or85) #7
  %107 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs.i, align 4
  %add.ptr.i238 = getelementptr i8, ptr %108, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i238, i32 %106) #7, !srcloc !174
  %109 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs.i, align 4
  %add.ptr.i241 = getelementptr i8, ptr %110, i32 320
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i241) #7, !srcloc !170
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i242)) #7
          to label %padctl_readl.exit243 [label %if.then.i242], !srcloc !172

if.then.i242:                                     ; preds = %padctl_writel.exit239
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %114, ptr noundef nonnull @.str.11, i32 noundef 320, i32 noundef %112) #7
  br label %padctl_readl.exit243

padctl_readl.exit243:                             ; preds = %if.then.i242, %padctl_writel.exit239
  %and87 = and i32 %112, -129
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i244)) #7
          to label %padctl_writel.exit247 [label %if.then.i244], !srcloc !172

if.then.i244:                                     ; preds = %padctl_readl.exit243
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %116, ptr noundef nonnull @.str.13, i32 noundef 320, i32 noundef %and87) #7
  br label %padctl_writel.exit247

padctl_writel.exit247:                            ; preds = %if.then.i244, %padctl_readl.exit243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %117 = tail call i32 @llvm.bswap.i32(i32 %and87) #7
  %118 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i, align 4
  %add.ptr.i246 = getelementptr i8, ptr %119, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i246, i32 %117) #7, !srcloc !174
  br label %if.end88

if.end88:                                         ; preds = %padctl_writel.exit247, %padctl_writel.exit223.if.end88_crit_edge
  %120 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs.i, align 4
  %add.ptr.i249 = getelementptr i8, ptr %121, i32 28
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i249) #7, !srcloc !170
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i250)) #7
          to label %padctl_readl.exit251 [label %if.then.i250], !srcloc !172

if.then.i250:                                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %125, ptr noundef nonnull @.str.11, i32 noundef 28, i32 noundef %123) #7
  br label %padctl_readl.exit251

padctl_readl.exit251:                             ; preds = %if.then.i250, %if.end88
  %add91 = add i32 %mul, 18
  %shl92 = shl nuw i32 1, %add91
  %neg93 = xor i32 %shl92, -1
  %and94 = and i32 %123, %neg93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i252)) #7
          to label %padctl_writel.exit255 [label %if.then.i252], !srcloc !172

if.then.i252:                                     ; preds = %padctl_readl.exit251
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %127, ptr noundef nonnull @.str.13, i32 noundef 28, i32 noundef %and94) #7
  br label %padctl_writel.exit255

padctl_writel.exit255:                            ; preds = %if.then.i252, %padctl_readl.exit251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %128 = tail call i32 @llvm.bswap.i32(i32 %and94) #7
  %129 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regs.i, align 4
  %add.ptr.i254 = getelementptr i8, ptr %130, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i254, i32 %128) #7, !srcloc !174
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %131 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regs.i, align 4
  %add.ptr.i257 = getelementptr i8, ptr %132, i32 28
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i257) #7, !srcloc !170
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i258)) #7
          to label %padctl_readl.exit259 [label %if.then.i258], !srcloc !172

if.then.i258:                                     ; preds = %padctl_writel.exit255
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %136, ptr noundef nonnull @.str.11, i32 noundef 28, i32 noundef %134) #7
  br label %padctl_readl.exit259

padctl_readl.exit259:                             ; preds = %if.then.i258, %padctl_writel.exit255
  %add97 = add i32 %mul, 17
  %shl98 = shl nuw i32 1, %add97
  %neg99 = xor i32 %shl98, -1
  %and100 = and i32 %134, %neg99
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i260)) #7
          to label %padctl_writel.exit263 [label %if.then.i260], !srcloc !172

if.then.i260:                                     ; preds = %padctl_readl.exit259
  call void @__sanitizer_cov_trace_pc() #9
  %137 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %138, ptr noundef nonnull @.str.13, i32 noundef 28, i32 noundef %and100) #7
  br label %padctl_writel.exit263

padctl_writel.exit263:                            ; preds = %if.then.i260, %padctl_readl.exit259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %139 = tail call i32 @llvm.bswap.i32(i32 %and100) #7
  %140 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs.i, align 4
  %add.ptr.i262 = getelementptr i8, ptr %141, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i262, i32 %139) #7, !srcloc !174
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %142 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regs.i, align 4
  %add.ptr.i265 = getelementptr i8, ptr %143, i32 28
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i265) #7, !srcloc !170
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i266)) #7
          to label %padctl_readl.exit267 [label %if.then.i266], !srcloc !172

if.then.i266:                                     ; preds = %padctl_writel.exit263
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %147, ptr noundef nonnull @.str.11, i32 noundef 28, i32 noundef %145) #7
  br label %padctl_readl.exit267

padctl_readl.exit267:                             ; preds = %if.then.i266, %padctl_writel.exit263
  %add103 = add i32 %mul, 16
  %shl104 = shl nuw i32 1, %add103
  %neg105 = xor i32 %shl104, -1
  %and106 = and i32 %145, %neg105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_enable, %if.then.i268)) #7
          to label %padctl_writel.exit271 [label %if.then.i268], !srcloc !172

if.then.i268:                                     ; preds = %padctl_readl.exit267
  call void @__sanitizer_cov_trace_pc() #9
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %149, ptr noundef nonnull @.str.13, i32 noundef 28, i32 noundef %and106) #7
  br label %padctl_writel.exit271

padctl_writel.exit271:                            ; preds = %if.then.i268, %padctl_readl.exit267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %150 = tail call i32 @llvm.bswap.i32(i32 %and106) #7
  %151 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs.i, align 4
  %add.ptr.i270 = getelementptr i8, ptr %152, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i270, i32 %150) #7, !srcloc !174
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra124_usb3_port_disable(ptr nocapture noundef readonly %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !170
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_disable, %if.then.i)) #7
          to label %padctl_readl.exit [label %if.then.i], !srcloc !172

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %7, ptr noundef nonnull @.str.11, i32 noundef 28, i32 noundef %5) #7
  br label %padctl_readl.exit

padctl_readl.exit:                                ; preds = %if.then.i, %entry
  %index = getelementptr inbounds %struct.tegra_xusb_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 8
  %mul = shl i32 %9, 2
  %add = add i32 %mul, 17
  %shl = shl nuw i32 1, %add
  %or = or i32 %shl, %5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_disable, %if.then.i42)) #7
          to label %padctl_writel.exit [label %if.then.i42], !srcloc !172

if.then.i42:                                      ; preds = %padctl_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %11, ptr noundef nonnull @.str.13, i32 noundef 28, i32 noundef %or) #7
  br label %padctl_writel.exit

padctl_writel.exit:                               ; preds = %if.then.i42, %padctl_readl.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %14, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %12) #7, !srcloc !174
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %16, i32 28
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #7, !srcloc !170
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_disable, %if.then.i47)) #7
          to label %padctl_readl.exit48 [label %if.then.i47], !srcloc !172

if.then.i47:                                      ; preds = %padctl_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %20, ptr noundef nonnull @.str.11, i32 noundef 28, i32 noundef %18) #7
  br label %padctl_readl.exit48

padctl_readl.exit48:                              ; preds = %if.then.i47, %padctl_writel.exit
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index, align 8
  %mul4 = shl i32 %22, 2
  %add5 = add i32 %mul4, 16
  %shl6 = shl nuw i32 1, %add5
  %or7 = or i32 %shl6, %18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_disable, %if.then.i49)) #7
          to label %padctl_writel.exit52 [label %if.then.i49], !srcloc !172

if.then.i49:                                      ; preds = %padctl_readl.exit48
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %24, ptr noundef nonnull @.str.13, i32 noundef 28, i32 noundef %or7) #7
  br label %padctl_writel.exit52

padctl_writel.exit52:                             ; preds = %if.then.i49, %padctl_readl.exit48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %or7) #7
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %27, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %25) #7, !srcloc !174
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 350, i32 noundef 2) #7
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %29, i32 28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #7, !srcloc !170
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_disable, %if.then.i55)) #7
          to label %padctl_readl.exit56 [label %if.then.i55], !srcloc !172

if.then.i55:                                      ; preds = %padctl_writel.exit52
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %33, ptr noundef nonnull @.str.11, i32 noundef 28, i32 noundef %31) #7
  br label %padctl_readl.exit56

padctl_readl.exit56:                              ; preds = %if.then.i55, %padctl_writel.exit52
  %34 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index, align 8
  %mul10 = shl i32 %35, 2
  %add11 = add i32 %mul10, 18
  %shl12 = shl nuw i32 1, %add11
  %or13 = or i32 %shl12, %31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_disable, %if.then.i57)) #7
          to label %padctl_writel.exit60 [label %if.then.i57], !srcloc !172

if.then.i57:                                      ; preds = %padctl_readl.exit56
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %37, ptr noundef nonnull @.str.13, i32 noundef 28, i32 noundef %or13) #7
  br label %padctl_writel.exit60

padctl_writel.exit60:                             ; preds = %if.then.i57, %padctl_readl.exit56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %38 = tail call i32 @llvm.bswap.i32(i32 %or13) #7
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %40, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %38) #7, !srcloc !174
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %42, i32 20
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #7, !srcloc !170
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_disable, %if.then.i63)) #7
          to label %padctl_readl.exit64 [label %if.then.i63], !srcloc !172

if.then.i63:                                      ; preds = %padctl_writel.exit60
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %46, ptr noundef nonnull @.str.11, i32 noundef 20, i32 noundef %44) #7
  br label %padctl_readl.exit64

padctl_readl.exit64:                              ; preds = %if.then.i63, %padctl_writel.exit60
  %47 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %index, align 8
  %mul16 = shl i32 %48, 2
  %shl17 = shl i32 7, %mul16
  %or21 = or i32 %shl17, %44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_port_disable, %if.then.i65)) #7
          to label %padctl_writel.exit68 [label %if.then.i65], !srcloc !172

if.then.i65:                                      ; preds = %padctl_readl.exit64
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %50, ptr noundef nonnull @.str.13, i32 noundef 20, i32 noundef %or21) #7
  br label %padctl_writel.exit68

padctl_writel.exit68:                             ; preds = %if.then.i65, %padctl_readl.exit64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %51 = tail call i32 @llvm.bswap.i32(i32 %or21) #7
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %53, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %51) #7, !srcloc !174
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra124_usb3_port_map(ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tegra_xusb_port_find_lane(ptr noundef %port, ptr noundef nonnull @tegra124_usb3_map, ptr noundef nonnull @.str.31) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_xusb_port_find_lane(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra124_xusb_padctl_probe(ptr noundef %dev, ptr noundef %soc) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 188, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %soc4 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %soc4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %soc, ptr %soc4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #7
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value.i, align 4, !annotation !177
  %call.i17 = call i32 @tegra_fuse_readl(i32 noundef 240, ptr noundef nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %cmp.i = icmp slt i32 %call.i17, 0
  br i1 %cmp.i, label %if.then6, label %tegra124_xusb_read_fuse_calibration.exit

tegra124_xusb_read_fuse_calibration.exit:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %fuse = getelementptr inbounds %struct.tegra124_xusb_padctl, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value.i, align 4
  %and.i = and i32 %4, 63
  %5 = ptrtoint ptr %fuse to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.i, ptr %fuse, align 4
  %shr.1.i = lshr i32 %4, 15
  %and.1.i = and i32 %shr.1.i, 63
  %arrayidx.1.i = getelementptr %struct.tegra124_xusb_padctl, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.1.i, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.tegra124_xusb_padctl, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and.1.i, ptr %arrayidx.2.i, align 4
  %shr2.i = lshr i32 %4, 13
  %and3.i = and i32 %shr2.i, 3
  %hs_iref_cap.i = getelementptr inbounds %struct.tegra124_xusb_padctl, ptr %call.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %hs_iref_cap.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and3.i, ptr %hs_iref_cap.i, align 4
  %shr4.i = lshr i32 %4, 7
  %and5.i = and i32 %shr4.i, 15
  %hs_term_range_adj.i = getelementptr inbounds %struct.tegra124_xusb_padctl, ptr %call.i, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %hs_term_range_adj.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and5.i, ptr %hs_term_range_adj.i, align 4
  %shr6.i = lshr i32 %4, 11
  %and7.i = and i32 %shr6.i, 3
  %hs_squelch_level.i = getelementptr inbounds %struct.tegra124_xusb_padctl, ptr %call.i, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %hs_squelch_level.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and7.i, ptr %hs_squelch_level.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #7
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #7
  %11 = inttoptr i32 %call.i17 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %tegra124_xusb_read_fuse_calibration.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %if.then6 ], [ %call.i, %tegra124_xusb_read_fuse_calibration.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tegra124_xusb_padctl_remove(ptr nocapture noundef %padctl) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_usb3_save_context(ptr noundef %padctl, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tegra_xusb_find_usb3_port(ptr noundef %padctl, i32 noundef %index) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %context_saved = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %context_saved to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %context_saved, align 4
  %lane1 = getelementptr inbounds %struct.tegra_xusb_port, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %lane1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lane1, align 4
  %pad = getelementptr inbounds %struct.tegra_xusb_lane, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pad, align 4
  %pcie = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %padctl, i32 0, i32 5
  %5 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcie, align 4
  %cmp = icmp eq ptr %4, %6
  br i1 %cmp, label %if.then2, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %index3 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %2, i32 0, i32 5
  %7 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp4 = icmp ult i32 %8, 2
  %mul = shl i32 %8, 2
  %cond.v = select i1 %cmp4, i32 152, i32 296
  %cond = add i32 %cond.v, %mul
  br label %if.end9

if.end9:                                          ; preds = %if.then2, %if.end.if.end9_crit_edge
  %offset.0 = phi i32 [ %cond, %if.then2 ], [ 348, %if.end.if.end9_crit_edge ]
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %padctl, i32 0, i32 1
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %offset.0
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !170
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_save_context, %if.then.i)) #7
          to label %padctl_readl.exit [label %if.then.i], !srcloc !172

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %14, ptr noundef nonnull @.str.11, i32 noundef %offset.0, i32 noundef %12) #7
  br label %padctl_readl.exit

padctl_readl.exit:                                ; preds = %if.then.i, %if.end9
  %and = and i32 %12, -16711681
  %or = or i32 %and, 3276800
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_save_context, %if.then.i133)) #7
          to label %padctl_writel.exit [label %if.then.i133], !srcloc !172

if.then.i133:                                     ; preds = %padctl_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %16, ptr noundef nonnull @.str.13, i32 noundef %offset.0, i32 noundef %or) #7
  br label %padctl_writel.exit

padctl_writel.exit:                               ; preds = %if.then.i133, %padctl_readl.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i135 = getelementptr i8, ptr %19, i32 %offset.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %17) #7, !srcloc !174
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i137 = getelementptr i8, ptr %21, i32 %offset.0
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137) #7, !srcloc !170
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_save_context, %if.then.i138)) #7
          to label %padctl_readl.exit139 [label %if.then.i138], !srcloc !172

if.then.i138:                                     ; preds = %padctl_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %25, ptr noundef nonnull @.str.11, i32 noundef %offset.0, i32 noundef %23) #7
  br label %padctl_readl.exit139

padctl_readl.exit139:                             ; preds = %if.then.i138, %padctl_writel.exit
  %shr = lshr i32 %23, 24
  %and12 = and i32 %shr, 31
  %tap1 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %call, i32 0, i32 6
  %26 = ptrtoint ptr %tap1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and12, ptr %tap1, align 8
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr.i141 = getelementptr i8, ptr %28, i32 %offset.0
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141) #7, !srcloc !170
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_save_context, %if.then.i142)) #7
          to label %padctl_readl.exit143 [label %if.then.i142], !srcloc !172

if.then.i142:                                     ; preds = %padctl_readl.exit139
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %32, ptr noundef nonnull @.str.11, i32 noundef %offset.0, i32 noundef %30) #7
  br label %padctl_readl.exit143

padctl_readl.exit143:                             ; preds = %if.then.i142, %padctl_readl.exit139
  %and14 = and i32 %30, -16711681
  %or15 = or i32 %and14, 3342336
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_save_context, %if.then.i144)) #7
          to label %padctl_writel.exit147 [label %if.then.i144], !srcloc !172

if.then.i144:                                     ; preds = %padctl_readl.exit143
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %34, ptr noundef nonnull @.str.13, i32 noundef %offset.0, i32 noundef %or15) #7
  br label %padctl_writel.exit147

padctl_writel.exit147:                            ; preds = %if.then.i144, %padctl_readl.exit143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %or15) #7
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %add.ptr.i146 = getelementptr i8, ptr %37, i32 %offset.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146, i32 %35) #7, !srcloc !174
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %add.ptr.i149 = getelementptr i8, ptr %39, i32 %offset.0
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i149) #7, !srcloc !170
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_save_context, %if.then.i150)) #7
          to label %padctl_readl.exit151 [label %if.then.i150], !srcloc !172

if.then.i150:                                     ; preds = %padctl_writel.exit147
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %43, ptr noundef nonnull @.str.11, i32 noundef %offset.0, i32 noundef %41) #7
  br label %padctl_readl.exit151

padctl_readl.exit151:                             ; preds = %if.then.i150, %padctl_writel.exit147
  %shr17 = lshr i32 %41, 24
  %and18 = and i32 %shr17, 127
  %amp = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %call, i32 0, i32 7
  %44 = ptrtoint ptr %amp to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and18, ptr %amp, align 4
  %mul19 = shl i32 %index, 2
  %add20 = add i32 %mul19, 104
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 4
  %add.ptr.i153 = getelementptr i8, ptr %46, i32 %add20
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i153) #7, !srcloc !170
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_save_context, %if.then.i154)) #7
          to label %padctl_readl.exit155 [label %if.then.i154], !srcloc !172

if.then.i154:                                     ; preds = %padctl_readl.exit151
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %50, ptr noundef nonnull @.str.11, i32 noundef %add20, i32 noundef %48) #7
  br label %padctl_readl.exit155

padctl_readl.exit155:                             ; preds = %if.then.i154, %padctl_readl.exit151
  %and22 = and i32 %48, -528416769
  %51 = ptrtoint ptr %tap1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tap1, align 8
  %shl = shl i32 %52, 24
  %53 = ptrtoint ptr %amp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %amp, align 4
  %shl25 = shl i32 %54, 16
  %or26 = or i32 %shl, %and22
  %or27 = or i32 %or26, %shl25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_save_context, %if.then.i156)) #7
          to label %padctl_writel.exit159 [label %if.then.i156], !srcloc !172

if.then.i156:                                     ; preds = %padctl_readl.exit155
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %56, ptr noundef nonnull @.str.13, i32 noundef %add20, i32 noundef %or27) #7
  br label %padctl_writel.exit159

padctl_writel.exit159:                            ; preds = %if.then.i156, %padctl_readl.exit155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %or27) #7
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 4
  %add.ptr.i158 = getelementptr i8, ptr %59, i32 %add20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158, i32 %57) #7, !srcloc !174
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 4
  %add.ptr.i161 = getelementptr i8, ptr %61, i32 %offset.0
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i161) #7, !srcloc !170
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_save_context, %if.then.i162)) #7
          to label %padctl_readl.exit163 [label %if.then.i162], !srcloc !172

if.then.i162:                                     ; preds = %padctl_writel.exit159
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %65, ptr noundef nonnull @.str.11, i32 noundef %offset.0, i32 noundef %63) #7
  br label %padctl_readl.exit163

padctl_readl.exit163:                             ; preds = %if.then.i162, %padctl_writel.exit159
  %and31 = and i32 %63, -16711681
  %or32 = or i32 %and31, 10551296
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_save_context, %if.then.i164)) #7
          to label %padctl_writel.exit167 [label %if.then.i164], !srcloc !172

if.then.i164:                                     ; preds = %padctl_readl.exit163
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %67, ptr noundef nonnull @.str.13, i32 noundef %offset.0, i32 noundef %or32) #7
  br label %padctl_writel.exit167

padctl_writel.exit167:                            ; preds = %if.then.i164, %padctl_readl.exit163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %68 = tail call i32 @llvm.bswap.i32(i32 %or32) #7
  %69 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i, align 4
  %add.ptr.i166 = getelementptr i8, ptr %70, i32 %offset.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166, i32 %68) #7, !srcloc !174
  %71 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i, align 4
  %add.ptr.i169 = getelementptr i8, ptr %72, i32 %offset.0
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i169) #7, !srcloc !170
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_save_context, %if.then.i170)) #7
          to label %padctl_readl.exit171 [label %if.then.i170], !srcloc !172

if.then.i170:                                     ; preds = %padctl_writel.exit167
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %76, ptr noundef nonnull @.str.11, i32 noundef %offset.0, i32 noundef %74) #7
  br label %padctl_readl.exit171

padctl_readl.exit171:                             ; preds = %if.then.i170, %padctl_writel.exit167
  %and34 = and i32 %74, -16711681
  %or35 = or i32 %and34, 2162688
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_save_context, %if.then.i172)) #7
          to label %padctl_writel.exit175 [label %if.then.i172], !srcloc !172

if.then.i172:                                     ; preds = %padctl_readl.exit171
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %78, ptr noundef nonnull @.str.13, i32 noundef %offset.0, i32 noundef %or35) #7
  br label %padctl_writel.exit175

padctl_writel.exit175:                            ; preds = %if.then.i172, %padctl_readl.exit171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %79 = tail call i32 @llvm.bswap.i32(i32 %or35) #7
  %80 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs.i, align 4
  %add.ptr.i174 = getelementptr i8, ptr %81, i32 %offset.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 %79) #7, !srcloc !174
  %82 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i, align 4
  %add.ptr.i177 = getelementptr i8, ptr %83, i32 %offset.0
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i177) #7, !srcloc !170
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_save_context, %if.then.i178)) #7
          to label %padctl_readl.exit179 [label %if.then.i178], !srcloc !172

if.then.i178:                                     ; preds = %padctl_writel.exit175
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %87, ptr noundef nonnull @.str.11, i32 noundef %offset.0, i32 noundef %85) #7
  br label %padctl_readl.exit179

padctl_readl.exit179:                             ; preds = %if.then.i178, %padctl_writel.exit175
  %shr37 = lshr i32 %85, 24
  %and38 = and i32 %shr37, 63
  %ctle_g = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %call, i32 0, i32 9
  %88 = ptrtoint ptr %ctle_g to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %and38, ptr %ctle_g, align 4
  %89 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i, align 4
  %add.ptr.i181 = getelementptr i8, ptr %90, i32 %offset.0
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i181) #7, !srcloc !170
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_save_context, %if.then.i182)) #7
          to label %padctl_readl.exit183 [label %if.then.i182], !srcloc !172

if.then.i182:                                     ; preds = %padctl_readl.exit179
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %94, ptr noundef nonnull @.str.11, i32 noundef %offset.0, i32 noundef %92) #7
  br label %padctl_readl.exit183

padctl_readl.exit183:                             ; preds = %if.then.i182, %padctl_readl.exit179
  %and40 = and i32 %92, -16711681
  %or41 = or i32 %and40, 4718592
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_save_context, %if.then.i184)) #7
          to label %padctl_writel.exit187 [label %if.then.i184], !srcloc !172

if.then.i184:                                     ; preds = %padctl_readl.exit183
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %96, ptr noundef nonnull @.str.13, i32 noundef %offset.0, i32 noundef %or41) #7
  br label %padctl_writel.exit187

padctl_writel.exit187:                            ; preds = %if.then.i184, %padctl_readl.exit183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %97 = tail call i32 @llvm.bswap.i32(i32 %or41) #7
  %98 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs.i, align 4
  %add.ptr.i186 = getelementptr i8, ptr %99, i32 %offset.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186, i32 %97) #7, !srcloc !174
  %100 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs.i, align 4
  %add.ptr.i189 = getelementptr i8, ptr %101, i32 %offset.0
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i189) #7, !srcloc !170
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_save_context, %if.then.i190)) #7
          to label %padctl_readl.exit191 [label %if.then.i190], !srcloc !172

if.then.i190:                                     ; preds = %padctl_writel.exit187
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %105, ptr noundef nonnull @.str.11, i32 noundef %offset.0, i32 noundef %103) #7
  br label %padctl_readl.exit191

padctl_readl.exit191:                             ; preds = %if.then.i190, %padctl_writel.exit187
  %shr43 = lshr i32 %103, 24
  %and44 = and i32 %shr43, 63
  %ctle_z = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %call, i32 0, i32 8
  %106 = ptrtoint ptr %ctle_z to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %and44, ptr %ctle_z, align 8
  %add46 = add i32 %mul19, 88
  %107 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs.i, align 4
  %add.ptr.i193 = getelementptr i8, ptr %108, i32 %add46
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i193) #7, !srcloc !170
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_save_context, %if.then.i194)) #7
          to label %padctl_readl.exit195 [label %if.then.i194], !srcloc !172

if.then.i194:                                     ; preds = %padctl_readl.exit191
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %112, ptr noundef nonnull @.str.11, i32 noundef %add46, i32 noundef %110) #7
  br label %padctl_readl.exit195

padctl_readl.exit195:                             ; preds = %if.then.i194, %padctl_readl.exit191
  %and48 = and i32 %110, -4144897
  %113 = ptrtoint ptr %ctle_g to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ctle_g, align 4
  %shl50 = shl i32 %114, 8
  %115 = ptrtoint ptr %ctle_z to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ctle_z, align 8
  %shl52 = shl i32 %116, 16
  %or53 = or i32 %shl50, %and48
  %or54 = or i32 %or53, %shl52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_usb3_save_context, %if.then.i196)) #7
          to label %padctl_writel.exit199 [label %if.then.i196], !srcloc !172

if.then.i196:                                     ; preds = %padctl_readl.exit195
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %118, ptr noundef nonnull @.str.13, i32 noundef %add46, i32 noundef %or54) #7
  br label %padctl_writel.exit199

padctl_writel.exit199:                            ; preds = %if.then.i196, %padctl_readl.exit195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %119 = tail call i32 @llvm.bswap.i32(i32 %or54) #7
  %120 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs.i, align 4
  %add.ptr.i198 = getelementptr i8, ptr %121, i32 %add46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 %119) #7, !srcloc !174
  br label %cleanup

cleanup:                                          ; preds = %padctl_writel.exit199, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %padctl_writel.exit199 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_hsic_set_idle(ptr nocapture noundef readonly %padctl, i32 noundef %index, i1 noundef zeroext %idle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %index, 2
  %add = add i32 %mul, 200
  %regs.i = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %padctl, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !170
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_readl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_hsic_set_idle, %if.then.i)) #7
          to label %padctl_readl.exit [label %if.then.i], !srcloc !172

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_readl.__UNIQUE_ID_ddebug294, ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef %add, i32 noundef %3) #7
  br label %padctl_readl.exit

padctl_readl.exit:                                ; preds = %if.then.i, %entry
  %and = and i32 %3, -1153
  %masksel = select i1 %idle, i32 1152, i32 0
  %value.0 = or i32 %and, %masksel
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @padctl_writel.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_hsic_set_idle, %if.then.i7)) #7
          to label %padctl_writel.exit [label %if.then.i7], !srcloc !172

if.then.i7:                                       ; preds = %padctl_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %padctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @padctl_writel.__UNIQUE_ID_ddebug293, ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef %add, i32 noundef %value.0) #7
  br label %padctl_writel.exit

padctl_writel.exit:                               ; preds = %if.then.i7, %padctl_readl.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %value.0) #7
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %8) #7, !srcloc !174
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_fuse_readl(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_xusb_find_usb3_port(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !40, !42, !44, !45, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @tegra124_xusb_padctl_soc, !1, !"tegra124_xusb_padctl_soc", i1 false, i1 false}
!1 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1729, i32 36}
!2 = !{ptr @__ksymtab_tegra124_xusb_padctl_soc, !3, !"__ksymtab_tegra124_xusb_padctl_soc", i1 false, i1 false}
!3 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1754, i32 1}
!4 = !{ptr @__UNIQUE_ID_author295, !5, !"__UNIQUE_ID_author295", i1 false, i1 false}
!5 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1756, i32 1}
!6 = !{ptr @__UNIQUE_ID_description296, !7, !"__UNIQUE_ID_description296", i1 false, i1 false}
!7 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1757, i32 1}
!8 = !{ptr @__UNIQUE_ID_file297, !9, !"__UNIQUE_ID_file297", i1 false, i1 false}
!9 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1758, i32 1}
!10 = !{ptr @__UNIQUE_ID_license298, !9, !"__UNIQUE_ID_license298", i1 false, i1 false}
!11 = !{ptr @tegra124_pads, !12, !"tegra124_pads", i1 false, i1 false}
!12 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1401, i32 41}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 660, i32 10}
!15 = !{ptr @tegra124_usb2_pad, !16, !"tegra124_usb2_pad", i1 false, i1 false}
!16 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 659, i32 40}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 421, i32 2}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 422, i32 2}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 423, i32 2}
!23 = !{ptr @tegra124_usb2_lanes, !24, !"tegra124_usb2_lanes", i1 false, i1 false}
!24 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 420, i32 41}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 415, i32 2}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 416, i32 2}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 417, i32 2}
!31 = !{ptr @tegra124_usb2_functions, !32, !"tegra124_usb2_functions", i1 false, i1 false}
!32 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 414, i32 27}
!33 = !{ptr @tegra124_usb2_ops, !34, !"tegra124_usb2_ops", i1 false, i1 false}
!34 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 654, i32 40}
!35 = !{ptr @tegra124_usb2_pad_probe.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 621, i32 2}
!37 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @tegra124_usb2_lane_ops, !39, !"tegra124_usb2_lane_ops", i1 false, i1 false}
!39 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 459, i32 41}
!40 = !{ptr @tegra124_usb2_phy_ops, !41, !"tegra124_usb2_phy_ops", i1 false, i1 false}
!41 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 600, i32 29}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/phy/tegra/xusb.h", i32 472, i32 2}
!44 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @padctl_readl.__UNIQUE_ID_ddebug294, !43, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/phy/tegra/xusb.h", i32 464, i32 2}
!50 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @padctl_writel.__UNIQUE_ID_ddebug293, !49, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 261, i32 6}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 492, i32 3}
!56 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @tegra124_usb2_phy_power_on._entry, !55, !"_entry", i1 false, i1 false}
!60 = !{ptr @tegra124_usb2_phy_power_on._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 577, i32 3}
!63 = !{ptr @tegra124_usb2_phy_power_off._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @tegra124_usb2_phy_power_off._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 795, i32 10}
!67 = !{ptr @tegra124_ulpi_pad, !68, !"tegra124_ulpi_pad", i1 false, i1 false}
!68 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 794, i32 40}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 672, i32 2}
!71 = !{ptr @tegra124_ulpi_lanes, !72, !"tegra124_ulpi_lanes", i1 false, i1 false}
!72 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 671, i32 41}
!73 = !{ptr @tegra124_ulpi_functions, !74, !"tegra124_ulpi_functions", i1 false, i1 false}
!74 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 666, i32 27}
!75 = !{ptr @tegra124_ulpi_ops, !76, !"tegra124_ulpi_ops", i1 false, i1 false}
!76 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 789, i32 40}
!77 = !{ptr @tegra124_ulpi_lane_ops, !78, !"tegra124_ulpi_lane_ops", i1 false, i1 false}
!78 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 708, i32 41}
!79 = !{ptr @tegra124_ulpi_phy_ops, !80, !"tegra124_ulpi_phy_ops", i1 false, i1 false}
!80 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 737, i32 29}
!81 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1011, i32 10}
!83 = !{ptr @tegra124_hsic_pad, !84, !"tegra124_hsic_pad", i1 false, i1 false}
!84 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1010, i32 40}
!85 = !{ptr @.str.23, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 807, i32 2}
!87 = !{ptr @.str.24, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 808, i32 2}
!89 = !{ptr @tegra124_hsic_lanes, !90, !"tegra124_hsic_lanes", i1 false, i1 false}
!90 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 806, i32 41}
!91 = !{ptr @tegra124_hsic_functions, !92, !"tegra124_hsic_functions", i1 false, i1 false}
!92 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 801, i32 27}
!93 = !{ptr @tegra124_hsic_ops, !94, !"tegra124_hsic_ops", i1 false, i1 false}
!94 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1005, i32 40}
!95 = !{ptr @tegra124_hsic_lane_ops, !96, !"tegra124_hsic_lane_ops", i1 false, i1 false}
!96 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 844, i32 41}
!97 = !{ptr @tegra124_hsic_phy_ops, !98, !"tegra124_hsic_phy_ops", i1 false, i1 false}
!98 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 953, i32 29}
!99 = !{ptr @.str.25, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1199, i32 10}
!101 = !{ptr @tegra124_pcie_pad, !102, !"tegra124_pcie_pad", i1 false, i1 false}
!102 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1198, i32 40}
!103 = !{ptr @.str.26, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1024, i32 2}
!105 = !{ptr @.str.27, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1025, i32 2}
!107 = !{ptr @.str.28, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1026, i32 2}
!109 = !{ptr @.str.29, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1027, i32 2}
!111 = !{ptr @.str.30, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1028, i32 2}
!113 = !{ptr @tegra124_pcie_lanes, !114, !"tegra124_pcie_lanes", i1 false, i1 false}
!114 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1023, i32 41}
!115 = !{ptr @.str.31, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1019, i32 2}
!117 = !{ptr @.str.32, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1020, i32 2}
!119 = !{ptr @tegra124_pcie_functions, !120, !"tegra124_pcie_functions", i1 false, i1 false}
!120 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1017, i32 27}
!121 = !{ptr @tegra124_pcie_ops, !122, !"tegra124_pcie_ops", i1 false, i1 false}
!122 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1193, i32 40}
!123 = !{ptr @tegra124_pcie_lane_ops, !124, !"tegra124_pcie_lane_ops", i1 false, i1 false}
!124 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1064, i32 41}
!125 = !{ptr @tegra124_pcie_phy_ops, !126, !"tegra124_pcie_phy_ops", i1 false, i1 false}
!126 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1141, i32 29}
!127 = !{ptr @tegra124_sata_pad, !128, !"tegra124_sata_pad", i1 false, i1 false}
!128 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1394, i32 40}
!129 = !{ptr @.str.33, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1206, i32 2}
!131 = !{ptr @tegra124_sata_lanes, !132, !"tegra124_sata_lanes", i1 false, i1 false}
!132 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1205, i32 41}
!133 = !{ptr @tegra124_sata_ops, !134, !"tegra124_sata_ops", i1 false, i1 false}
!134 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1389, i32 40}
!135 = !{ptr @tegra124_sata_lane_ops, !136, !"tegra124_sata_lane_ops", i1 false, i1 false}
!136 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1242, i32 41}
!137 = !{ptr @tegra124_sata_phy_ops, !138, !"tegra124_sata_phy_ops", i1 false, i1 false}
!138 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1337, i32 29}
!139 = !{ptr @tegra124_usb2_port_ops, !140, !"tegra124_usb2_port_ops", i1 false, i1 false}
!140 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1424, i32 41}
!141 = !{ptr @tegra124_ulpi_port_ops, !142, !"tegra124_ulpi_port_ops", i1 false, i1 false}
!142 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1447, i32 41}
!143 = !{ptr @tegra124_hsic_port_ops, !144, !"tegra124_hsic_port_ops", i1 false, i1 false}
!144 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1469, i32 41}
!145 = !{ptr @tegra124_usb3_port_ops, !146, !"tegra124_usb3_port_ops", i1 false, i1 false}
!146 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1653, i32 41}
!147 = !{ptr @tegra124_usb3_map, !148, !"tegra124_usb3_map", i1 false, i1 false}
!148 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1640, i32 41}
!149 = !{ptr @tegra124_xusb_padctl_ops, !150, !"tegra124_xusb_padctl_ops", i1 false, i1 false}
!150 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1715, i32 43}
!151 = !{ptr @.str.34, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1723, i32 2}
!153 = !{ptr @.str.35, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1724, i32 2}
!155 = !{ptr @.str.36, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1725, i32 2}
!157 = !{ptr @.str.37, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1726, i32 2}
!159 = !{ptr @tegra124_xusb_padctl_supply_names, !160, !"tegra124_xusb_padctl_supply_names", i1 false, i1 false}
!160 = !{!"../drivers/phy/tegra/xusb-tegra124.c", i32 1722, i32 27}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{i64 3028149}
!171 = !{i64 2155330088}
!172 = !{i64 2148808474, i64 2148808479, i64 2148808492, i64 2148808536, i64 2148808570, i64 2148808591}
!173 = !{i64 2155329232}
!174 = !{i64 3027731}
!175 = !{!"branch_weights", i32 1, i32 2000}
!176 = !{i8 0, i8 2}
!177 = !{!"auto-init"}
