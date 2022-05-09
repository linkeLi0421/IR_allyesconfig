; ModuleID = '/llk/IR_all_yes/drivers/usb/host/xhci-tegra.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-tegra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xhci_driver_overrides = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tegra_xusb_soc = type { ptr, ptr, i32, ptr, i32, ptr, %struct.anon.87, %struct.tegra_xusb_mbox_regs, i8, i8, i8, i8 }
%struct.anon.87 = type { %struct.anon.88, %struct.anon.88, %struct.anon.88, %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.tegra_xusb_mbox_regs = type { i16, i16, i16, i16 }
%struct.tegra_xusb_phy_type = type { ptr, i32 }
%struct.tegra_xusb_context_soc = type { %struct.anon.85, %struct.anon.86 }
%struct.anon.85 = type { ptr, i32 }
%struct.anon.86 = type { ptr, i32 }
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
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [4 x i8], [0 x i32] }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.tegra_xusb = type { ptr, ptr, ptr, %struct.mutex, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, ptr, i32, i32, i32, i8, %struct.notifier_block, %struct.work_struct, %struct.anon.89, i8, %struct.tegra_xusb_context }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.89 = type { i32, ptr, i32 }
%struct.tegra_xusb_context = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.tegra_xusb_fw_header = type { i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i32, i32, i32, [2 x i32], i32, [8 x i8], i32, i8, [139 x i8] }
%struct.xhci_op_regs = type { i32, i32, i32, i32, i32, i32, i64, [4 x i32], i64, i32, [241 x i32], i32, i32, i32, i32, [1016 x i32] }
%struct.tegra_xusb_mbox_msg = type { i32, i32 }

@__UNIQUE_ID_firmware308 = internal constant [45 x i8] c"xhci_tegra.firmware=nvidia/tegra124/xusb.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware309 = internal constant [45 x i8] c"xhci_tegra.firmware=nvidia/tegra210/xusb.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware310 = internal constant [45 x i8] c"xhci_tegra.firmware=nvidia/tegra186/xusb.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware311 = internal constant [45 x i8] c"xhci_tegra.firmware=nvidia/tegra194/xusb.bin\00", section ".modinfo", align 1
@__initcall__kmod_xhci_tegra__312_2450_tegra_xusb_init6 = internal global ptr @tegra_xusb_init, section ".initcall6.init", align 4
@tegra_xusb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_xusb_probe, ptr @tegra_xusb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_xusb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_xusb_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_xusb_exit = internal global ptr @tegra_xusb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author313 = internal constant [60 x i8] c"xhci_tegra.author=Andrew Bresticker <abrestic@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description314 = internal constant [69 x i8] c"xhci_tegra.description=NVIDIA Tegra XUSB xHCI host-controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [44 x i8] c"xhci_tegra.file=drivers/usb/host/xhci-tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [26 x i8] c"xhci_tegra.license=GPL v2\00", section ".modinfo", align 1
@tegra_xhci_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@tegra_xhci_overrides = internal constant %struct.xhci_driver_overrides { i32 0, ptr @tegra_xhci_setup, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra-xusb\00", [21 x i8] zeroinitializer }, align 32
@tegra_xusb_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-xusb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-xusb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-xusb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-xusb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_soc }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@tegra_xusb_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_xusb_suspend, ptr @tegra_xusb_resume, ptr @tegra_xusb_suspend, ptr @tegra_xusb_resume, ptr @tegra_xusb_suspend, ptr @tegra_xusb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_xusb_runtime_suspend, ptr @tegra_xusb_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_xusb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&tegra->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvidia,xusb-padctl\00", [45 x i8] zeroinitializer }, align 32
@tegra_xusb_probe.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 1, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xhci_tegra\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_xusb_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/host/xhci-tegra.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%pOF is missing an interrupt, disabling PM support\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xusb_host\00", [22 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.5, i32 1474, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get xusb_host: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr = internal global ptr @tegra_xusb_probe._entry, section ".printk_index", align 4
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xusb_falcon_src\00", [16 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 1481, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get xusb_falcon_src: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.14 = internal global ptr @tegra_xusb_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xusb_ss\00", [24 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 1488, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get xusb_ss: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.18 = internal global ptr @tegra_xusb_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xusb_ss_src\00", [20 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 1495, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get xusb_ss_src: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.22 = internal global ptr @tegra_xusb_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xusb_hs_src\00", [20 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 1502, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get xusb_hs_src: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.26 = internal global ptr @tegra_xusb_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xusb_fs_src\00", [20 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.4, ptr @.str.5, i32 1509, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get xusb_fs_src: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.30 = internal global ptr @tegra_xusb_probe._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_u_480m\00", [21 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.4, ptr @.str.5, i32 1516, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get pll_u_480m: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.34 = internal global ptr @tegra_xusb_probe._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clk_m\00", [26 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.4, ptr @.str.5, i32 1523, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get clk_m: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.38 = internal global ptr @tegra_xusb_probe._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_e\00", [26 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.4, ptr @.str.5, i32 1530, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get pll_e: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.42 = internal global ptr @tegra_xusb_probe._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"power-domains\00", [18 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.4, ptr @.str.5, i32 1540, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get xusb_host reset: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.46 = internal global ptr @tegra_xusb_probe._entry.44, section ".printk_index", align 4
@tegra_xusb_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.4, ptr @.str.5, i32 1548, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get xusb_ss reset: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.49 = internal global ptr @tegra_xusb_probe._entry.47, section ".printk_index", align 4
@tegra_xusb_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.4, ptr @.str.5, i32 1571, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.52 = internal global ptr @tegra_xusb_probe._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb2\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.4, ptr @.str.5, i32 1599, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get PHY %s: %ld\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.57 = internal global ptr @tegra_xusb_probe._entry.55, section ".printk_index", align 4
@tegra_xusb_probe._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.4, ptr @.str.5, i32 1628, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable clocks: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.60 = internal global ptr @tegra_xusb_probe._entry.58, section ".printk_index", align 4
@tegra_xusb_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.4, ptr @.str.5, i32 1634, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.63 = internal global ptr @tegra_xusb_probe._entry.61, section ".printk_index", align 4
@tegra_xusb_probe._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.4, ptr @.str.5, i32 1640, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable PHYs: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.66 = internal global ptr @tegra_xusb_probe._entry.64, section ".printk_index", align 4
@tegra_xusb_probe._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.4, ptr @.str.5, i32 1650, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set DMA mask: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.69 = internal global ptr @tegra_xusb_probe._entry.67, section ".printk_index", align 4
@tegra_xusb_probe._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.4, ptr @.str.5, i32 1656, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to request firmware: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.72 = internal global ptr @tegra_xusb_probe._entry.70, section ".printk_index", align 4
@tegra_xusb_probe._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.4, ptr @.str.5, i32 1668, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to load firmware: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.75 = internal global ptr @tegra_xusb_probe._entry.73, section ".printk_index", align 4
@tegra_xusb_probe._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.4, ptr @.str.5, i32 1674, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to add USB HCD: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.78 = internal global ptr @tegra_xusb_probe._entry.76, section ".printk_index", align 4
@tegra_xusb_probe._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.4, ptr @.str.5, i32 1687, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create shared HCD\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.81 = internal global ptr @tegra_xusb_probe._entry.79, section ".printk_index", align 4
@tegra_xusb_probe._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.4, ptr @.str.5, i32 1694, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to add shared HCD: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.84 = internal global ptr @tegra_xusb_probe._entry.82, section ".printk_index", align 4
@tegra_xusb_probe._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.4, ptr @.str.5, i32 1703, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.87 = internal global ptr @tegra_xusb_probe._entry.85, section ".printk_index", align 4
@tegra_xusb_probe._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.4, ptr @.str.5, i32 1713, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request padctl IRQ: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.90 = internal global ptr @tegra_xusb_probe._entry.88, section ".printk_index", align 4
@tegra_xusb_probe._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.4, ptr @.str.5, i32 1720, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable messages: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.93 = internal global ptr @tegra_xusb_probe._entry.91, section ".printk_index", align 4
@tegra_xusb_probe._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.4, ptr @.str.5, i32 1726, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to init USB PHY: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_xusb_probe._entry_ptr.96 = internal global ptr @tegra_xusb_probe._entry.94, section ".printk_index", align 4
@tegra_xusb_powerdomain_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.5, i32 1015, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get host pm-domain: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra_xusb_powerdomain_init\00", [36 x i8] zeroinitializer }, align 32
@tegra_xusb_powerdomain_init._entry_ptr = internal global ptr @tegra_xusb_powerdomain_init._entry, section ".printk_index", align 4
@tegra_xusb_powerdomain_init._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.5, i32 1022, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get superspeed pm-domain: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@tegra_xusb_powerdomain_init._entry_ptr.101 = internal global ptr @tegra_xusb_powerdomain_init._entry.99, section ".printk_index", align 4
@tegra_xusb_set_ss_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.5, i32 375, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid SS rate: %lu Hz\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_xusb_set_ss_clk\00", [42 x i8] zeroinitializer }, align 32
@tegra_xusb_set_ss_clk._entry_ptr = internal global ptr @tegra_xusb_set_ss_clk._entry, section ".printk_index", align 4
@tegra_xusb_set_ss_clk._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.5, i32 380, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SS clock doesn't match requested rate\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_xusb_set_ss_clk._entry_ptr.106 = internal global ptr @tegra_xusb_set_ss_clk._entry.104, section ".printk_index", align 4
@tegra_xusb_request_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.107, ptr @.str.5, i32 861, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra_xusb_request_firmware\00", [36 x i8] zeroinitializer }, align 32
@tegra_xusb_request_firmware._entry_ptr = internal global ptr @tegra_xusb_request_firmware._entry, section ".printk_index", align 4
@tegra_xusb_request_firmware._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.5, i32 872, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to allocate memory for firmware\0A\00", [56 x i8] zeroinitializer }, align 32
@tegra_xusb_request_firmware._entry_ptr.110 = internal global ptr @tegra_xusb_request_firmware._entry.108, section ".printk_index", align 4
@tegra_xusb_unpowergate_partitions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.5, i32 1039, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to enable XUSB SS partition\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tegra_xusb_unpowergate_partitions\00", [62 x i8] zeroinitializer }, align 32
@tegra_xusb_unpowergate_partitions._entry_ptr = internal global ptr @tegra_xusb_unpowergate_partitions._entry, section ".printk_index", align 4
@tegra_xusb_unpowergate_partitions._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.5, i32 1045, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to enable XUSB Host partition\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra_xusb_unpowergate_partitions._entry_ptr.115 = internal global ptr @tegra_xusb_unpowergate_partitions._entry.113, section ".printk_index", align 4
@tegra_xusb_unpowergate_partitions._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.5, i32 1054, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@tegra_xusb_unpowergate_partitions._entry_ptr.117 = internal global ptr @tegra_xusb_unpowergate_partitions._entry.116, section ".printk_index", align 4
@tegra_xusb_unpowergate_partitions._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.5, i32 1062, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@tegra_xusb_unpowergate_partitions._entry_ptr.119 = internal global ptr @tegra_xusb_unpowergate_partitions._entry.118, section ".printk_index", align 4
@tegra_xusb_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.5, i32 902, ptr @.str.122, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Firmware already loaded, Falcon state %#x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_xusb_load_firmware\00", [39 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tegra_xusb_load_firmware._entry_ptr = internal global ptr @tegra_xusb_load_firmware._entry, section ".printk_index", align 4
@tegra_xusb_load_firmware._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.121, ptr @.str.5, i32 960, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DMA controller not ready %#010x\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_xusb_load_firmware._entry_ptr.125 = internal global ptr @tegra_xusb_load_firmware._entry.123, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tegra_xusb_load_firmware._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.121, ptr @.str.5, i32 984, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"XHCI controller not read: %#010x\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra_xusb_load_firmware._entry_ptr.128 = internal global ptr @tegra_xusb_load_firmware._entry.126, section ".printk_index", align 4
@tegra_xusb_load_firmware._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.121, ptr @.str.5, i32 990, ptr @.str.122, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Firmware timestamp: %ptTs UTC\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_xusb_load_firmware._entry_ptr.131 = internal global ptr @tegra_xusb_load_firmware._entry.129, section ".printk_index", align 4
@tegra_xusb_mbox_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.5, i32 517, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"controller firmware hang\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_xusb_mbox_irq\00", [44 x i8] zeroinitializer }, align 32
@tegra_xusb_mbox_irq._entry_ptr = internal global ptr @tegra_xusb_mbox_irq._entry, section ".printk_index", align 4
@tegra_xusb_mbox_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.5, i32 576, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to save context for USB3#%u: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_xusb_mbox_handle\00", [41 x i8] zeroinitializer }, align 32
@tegra_xusb_mbox_handle._entry_ptr = internal global ptr @tegra_xusb_mbox_handle._entry, section ".printk_index", align 4
@tegra_xusb_mbox_handle._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.5, i32 604, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set HSIC#%u %s: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_xusb_mbox_handle._entry_ptr.138 = internal global ptr @tegra_xusb_mbox_handle._entry.136, section ".printk_index", align 4
@.str.139 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"busy\00", [27 x i8] zeroinitializer }, align 32
@tegra_xusb_mbox_handle._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.135, ptr @.str.5, i32 641, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to %s LFPS detection on USB3#%u: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@tegra_xusb_mbox_handle._entry_ptr.143 = internal global ptr @tegra_xusb_mbox_handle._entry.141, section ".printk_index", align 4
@.str.144 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@tegra_xusb_mbox_handle._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.135, ptr @.str.5, i32 651, ptr @.str.148, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unknown message: %#x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tegra_xusb_mbox_handle._entry_ptr.149 = internal global ptr @tegra_xusb_mbox_handle._entry.146, section ".printk_index", align 4
@.str.150 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ACK\00", [28 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NAK\00", [28 x i8] zeroinitializer }, align 32
@tegra_xusb_mbox_handle._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.135, ptr @.str.5, i32 660, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to send %s: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@tegra_xusb_mbox_handle._entry_ptr.154 = internal global ptr @tegra_xusb_mbox_handle._entry.152, section ".printk_index", align 4
@tegra_xusb_mbox_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.5, i32 464, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mailbox is busy\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_xusb_mbox_send\00", [43 x i8] zeroinitializer }, align 32
@tegra_xusb_mbox_send._entry_ptr = internal global ptr @tegra_xusb_mbox_send._entry, section ".printk_index", align 4
@tegra_xusb_mbox_send._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.156, ptr @.str.5, i32 472, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to acquire mailbox\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_xusb_mbox_send._entry_ptr.159 = internal global ptr @tegra_xusb_mbox_send._entry.157, section ".printk_index", align 4
@__tegra_xusb_enable_firmware_messages._entry = internal constant %struct.pi_entry { ptr @.str.92, ptr @.str.160, ptr @.str.5, i32 1120, ptr @.str.9, ptr @.str.10 }, align 1
@.str.160 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"__tegra_xusb_enable_firmware_messages\00", [58 x i8] zeroinitializer }, align 32
@__tegra_xusb_enable_firmware_messages._entry_ptr = internal global ptr @__tegra_xusb_enable_firmware_messages._entry, section ".printk_index", align 4
@tegra_xusb_init_usb_phy.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.161 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&tegra->id_work)\00", [61 x i8] zeroinitializer }, align 32
@tegra_xusb_init_usb_phy.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.162, ptr @.str.5, ptr @.str.163, i8 1, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_xusb_init_usb_phy\00", [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usbphy-%d registered\00", [43 x i8] zeroinitializer }, align 32
@tegra_xhci_id_work.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.164, ptr @.str.5, ptr @.str.165, i8 1, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_xhci_id_work\00", [45 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"host mode %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@tegra_xhci_id_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.164, ptr @.str.5, i32 1249, ptr @.str.122, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to RESET_SSPI %d\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_xhci_id_work._entry_ptr = internal global ptr @tegra_xhci_id_work._entry, section ".printk_index", align 4
@tegra_xhci_set_port_power.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.169, ptr @.str.5, ptr @.str.170, i8 1, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.169 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_xhci_set_port_power\00", [38 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s():%s %s port power\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HS\00", [29 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SS\00", [29 x i8] zeroinitializer }, align 32
@tegra_xhci_set_port_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.169, ptr @.str.5, i32 1187, ptr @.str.122, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to %s %s PP %d\0A\00", [41 x i8] zeroinitializer }, align 32
@tegra_xhci_set_port_power._entry_ptr = internal global ptr @tegra_xhci_set_port_power._entry, section ".printk_index", align 4
@tegra_xhci_id_notify.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.176, ptr @.str.5, ptr @.str.177, i8 1, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_xhci_id_notify\00", [43 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s(): action is %d\00", [45 x i8] zeroinitializer }, align 32
@tegra_xhci_id_notify.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.176, ptr @.str.5, ptr @.str.178, i8 1, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Same role(%d) received. Ignore\00", [33 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@tegra_xusb_powergate_partitions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.5, i32 1079, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to disable XUSB Host partition\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tegra_xusb_powergate_partitions\00", [32 x i8] zeroinitializer }, align 32
@tegra_xusb_powergate_partitions._entry_ptr = internal global ptr @tegra_xusb_powergate_partitions._entry, section ".printk_index", align 4
@tegra_xusb_powergate_partitions._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.180, ptr @.str.5, i32 1085, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to disable XUSB SS partition\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_xusb_powergate_partitions._entry_ptr.183 = internal global ptr @tegra_xusb_powergate_partitions._entry.181, section ".printk_index", align 4
@tegra_xusb_powergate_partitions._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.5, i32 1092, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@tegra_xusb_powergate_partitions._entry_ptr.185 = internal global ptr @tegra_xusb_powergate_partitions._entry.184, section ".printk_index", align 4
@tegra_xusb_powergate_partitions._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.180, ptr @.str.5, i32 1098, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@tegra_xusb_powergate_partitions._entry_ptr.187 = internal global ptr @tegra_xusb_powergate_partitions._entry.186, section ".printk_index", align 4
@tegra124_soc = internal constant { %struct.tegra_xusb_soc, [60 x i8] } { %struct.tegra_xusb_soc { ptr @.str.188, ptr @tegra124_supply_names, i32 4, ptr @tegra124_phy_types, i32 3, ptr @tegra124_xusb_context, %struct.anon.87 { %struct.anon.88 { i32 4, i32 4 }, %struct.anon.88 zeroinitializer, %struct.anon.88 { i32 6, i32 2 }, %struct.anon.88 { i32 0, i32 2 } }, %struct.tegra_xusb_mbox_regs { i16 228, i16 232, i16 236, i16 240 }, i8 1, i8 1, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@tegra210_soc = internal constant { %struct.tegra_xusb_soc, [60 x i8] } { %struct.tegra_xusb_soc { ptr @.str.195, ptr @tegra210_supply_names, i32 3, ptr @tegra210_phy_types, i32 3, ptr @tegra124_xusb_context, %struct.anon.87 { %struct.anon.88 { i32 4, i32 4 }, %struct.anon.88 zeroinitializer, %struct.anon.88 { i32 8, i32 1 }, %struct.anon.88 { i32 0, i32 4 } }, %struct.tegra_xusb_mbox_regs { i16 228, i16 232, i16 236, i16 240 }, i8 0, i8 1, i8 0, i8 1 }, [60 x i8] zeroinitializer }, align 32
@tegra186_soc = internal constant { %struct.tegra_xusb_soc, [60 x i8] } { %struct.tegra_xusb_soc { ptr @.str.197, ptr @tegra186_supply_names, i32 0, ptr @tegra186_phy_types, i32 3, ptr @tegra186_xusb_context, %struct.anon.87 { %struct.anon.88 { i32 3, i32 3 }, %struct.anon.88 zeroinitializer, %struct.anon.88 { i32 6, i32 1 }, %struct.anon.88 { i32 0, i32 3 } }, %struct.tegra_xusb_mbox_regs { i16 228, i16 232, i16 236, i16 240 }, i8 0, i8 0, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@tegra194_soc = internal constant { %struct.tegra_xusb_soc, [60 x i8] } { %struct.tegra_xusb_soc { ptr @.str.198, ptr @tegra194_supply_names, i32 0, ptr @tegra194_phy_types, i32 2, ptr @tegra186_xusb_context, %struct.anon.87 { %struct.anon.88 { i32 4, i32 4 }, %struct.anon.88 zeroinitializer, %struct.anon.88 zeroinitializer, %struct.anon.88 { i32 0, i32 4 } }, %struct.tegra_xusb_mbox_regs { i16 104, i16 108, i16 112, i16 116 }, i8 0, i8 0, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvidia/tegra124/xusb.bin\00", [39 x i8] zeroinitializer }, align 32
@tegra124_supply_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192], [16 x i8] zeroinitializer }, align 32
@tegra124_phy_types = internal constant { [3 x %struct.tegra_xusb_phy_type], [40 x i8] } { [3 x %struct.tegra_xusb_phy_type] [%struct.tegra_xusb_phy_type { ptr @.str.193, i32 2 }, %struct.tegra_xusb_phy_type { ptr @.str.53, i32 3 }, %struct.tegra_xusb_phy_type { ptr @.str.194, i32 2 }], [40 x i8] zeroinitializer }, align 32
@tegra124_xusb_context = internal constant { %struct.tegra_xusb_context_soc, [16 x i8] } { %struct.tegra_xusb_context_soc { %struct.anon.85 { ptr @tegra124_xusb_context_ipfs, i32 11 }, %struct.anon.86 { ptr @tegra124_xusb_context_fpci, i32 8 } }, [16 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"avddio-pex\00", [21 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dvddio-pex\00", [21 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avdd-usb\00", [23 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hvdd-usb-ss\00", [20 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb3\00", [27 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hsic\00", [27 x i8] zeroinitializer }, align 32
@tegra124_xusb_context_ipfs = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 192, i32 196, i32 200, i32 256, i32 320, i32 388, i32 392, i32 408, i32 412, i32 444, i32 476], [52 x i8] zeroinitializer }, align 32
@tegra124_xusb_context_fpci = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1144, i32 1148, i32 1152, i32 1156, i32 1084, i32 248, i32 96, i32 64], [32 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvidia/tegra210/xusb.bin\00", [39 x i8] zeroinitializer }, align 32
@tegra210_supply_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.190, ptr @.str.196, ptr @.str.191], [20 x i8] zeroinitializer }, align 32
@tegra210_phy_types = internal constant { [3 x %struct.tegra_xusb_phy_type], [40 x i8] } { [3 x %struct.tegra_xusb_phy_type] [%struct.tegra_xusb_phy_type { ptr @.str.193, i32 4 }, %struct.tegra_xusb_phy_type { ptr @.str.53, i32 4 }, %struct.tegra_xusb_phy_type { ptr @.str.194, i32 1 }], [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hvddio-pex\00", [21 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvidia/tegra186/xusb.bin\00", [39 x i8] zeroinitializer }, align 32
@tegra186_supply_names = internal constant { [0 x ptr], [32 x i8] } zeroinitializer, align 32
@tegra186_phy_types = internal constant { [3 x %struct.tegra_xusb_phy_type], [40 x i8] } { [3 x %struct.tegra_xusb_phy_type] [%struct.tegra_xusb_phy_type { ptr @.str.193, i32 3 }, %struct.tegra_xusb_phy_type { ptr @.str.53, i32 3 }, %struct.tegra_xusb_phy_type { ptr @.str.194, i32 1 }], [40 x i8] zeroinitializer }, align 32
@tegra186_xusb_context = internal constant { %struct.tegra_xusb_context_soc, [16 x i8] } { %struct.tegra_xusb_context_soc { %struct.anon.85 zeroinitializer, %struct.anon.86 { ptr @tegra124_xusb_context_fpci, i32 8 } }, [16 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvidia/tegra194/xusb.bin\00", [39 x i8] zeroinitializer }, align 32
@tegra194_supply_names = internal constant { [0 x ptr], [32 x i8] } zeroinitializer, align 32
@tegra194_phy_types = internal constant { [2 x %struct.tegra_xusb_phy_type], [16 x i8] } { [2 x %struct.tegra_xusb_phy_type] [%struct.tegra_xusb_phy_type { ptr @.str.193, i32 4 }, %struct.tegra_xusb_phy_type { ptr @.str.53, i32 4 }], [16 x i8] zeroinitializer }, align 32
@tegra_xusb_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.200, ptr @.str.5, i32 2154, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable padctl wakes\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_xusb_suspend\00", [45 x i8] zeroinitializer }, align 32
@tegra_xusb_suspend._entry_ptr = internal global ptr @tegra_xusb_suspend._entry, section ".printk_index", align 4
@tegra_xusb_exit_elpg.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.201, ptr @.str.5, ptr @.str.202, i8 1, i8 -1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.201 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_xusb_exit_elpg\00", [43 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"exiting ELPG\0A\00", [18 x i8] zeroinitializer }, align 32
@tegra_xusb_exit_elpg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.201, ptr @.str.5, i32 2049, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@tegra_xusb_exit_elpg._entry_ptr = internal global ptr @tegra_xusb_exit_elpg._entry, section ".printk_index", align 4
@tegra_xusb_exit_elpg._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.201, ptr @.str.5, i32 2075, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@tegra_xusb_exit_elpg._entry_ptr.204 = internal global ptr @tegra_xusb_exit_elpg._entry.203, section ".printk_index", align 4
@tegra_xusb_exit_elpg._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.201, ptr @.str.5, i32 2081, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@tegra_xusb_exit_elpg._entry_ptr.206 = internal global ptr @tegra_xusb_exit_elpg._entry.205, section ".printk_index", align 4
@tegra_xusb_exit_elpg._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.201, ptr @.str.5, i32 2090, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to resume XHCI: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_xusb_exit_elpg._entry_ptr.209 = internal global ptr @tegra_xusb_exit_elpg._entry.207, section ".printk_index", align 4
@tegra_xusb_exit_elpg.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.201, ptr @.str.5, ptr @.str.210, i8 2, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.210 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"exiting ELPG done\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra_xusb_exit_elpg.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.201, ptr @.str.5, ptr @.str.211, i8 2, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.211 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"exiting ELPG failed\0A\00", [43 x i8] zeroinitializer }, align 32
@tegra_xusb_enter_elpg.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.212, ptr @.str.5, ptr @.str.213, i8 1, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.212 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_xusb_enter_elpg\00", [42 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"entering ELPG\0A\00", [17 x i8] zeroinitializer }, align 32
@tegra_xusb_enter_elpg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.212, ptr @.str.5, i32 1992, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"not all ports suspended: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_xusb_enter_elpg._entry_ptr = internal global ptr @tegra_xusb_enter_elpg._entry, section ".printk_index", align 4
@tegra_xusb_enter_elpg._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.212, ptr @.str.5, i32 1998, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to suspend XHCI: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_xusb_enter_elpg._entry_ptr.217 = internal global ptr @tegra_xusb_enter_elpg._entry.215, section ".printk_index", align 4
@tegra_xusb_enter_elpg.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.212, ptr @.str.5, ptr @.str.218, i8 1, i8 -7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.218 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"entering ELPG done\0A\00", [44 x i8] zeroinitializer }, align 32
@tegra_xusb_enter_elpg.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.212, ptr @.str.5, ptr @.str.219, i8 1, i8 -5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.219 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"entering ELPG failed\0A\00", [42 x i8] zeroinitializer }, align 32
@xhci_hub_ports_suspended._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.221, ptr @.str.5, i32 1821, ptr @.str.122, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%u-%u isn't suspended: %#010x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xhci_hub_ports_suspended\00", [39 x i8] zeroinitializer }, align 32
@xhci_hub_ports_suspended._entry_ptr = internal global ptr @xhci_hub_ports_suspended._entry, section ".printk_index", align 4
@tegra_xusb_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.223, ptr @.str.5, i32 2183, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to disable padctl wakes\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra_xusb_resume\00", [46 x i8] zeroinitializer }, align 32
@tegra_xusb_resume._entry_ptr = internal global ptr @tegra_xusb_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 128, i64 129]
@__sancov_gen_cov_switch_values.224 = internal global [12 x i64] [i64 10, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6, i64 9, i64 12, i64 13, i64 17, i64 18]
@__sancov_gen_cov_switch_values.225 = internal global [4 x i64] [i64 2, i64 32, i64 12000000, i64 120000000]
@__sancov_gen_cov_switch_values.226 = internal global [5 x i64] [i64 3, i64 32, i64 1024, i64 2048, i64 3072]
@___asan_gen_.227 = private unnamed_addr constant [18 x i8] c"tegra_xusb_driver\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2416, i32 31 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2420, i32 11 }
@___asan_gen_.233 = private unnamed_addr constant [20 x i8] c"tegra_xusb_of_match\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2407, i32 34 }
@___asan_gen_.236 = private unnamed_addr constant [18 x i8] c"tegra_xusb_pm_ops\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2219, i32 32 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1419, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1452, i32 43 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1467, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1471, i32 45 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1474, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1478, i32 47 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1481, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1485, i32 43 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1488, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1492, i32 47 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1495, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1499, i32 47 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1502, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1506, i32 47 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1509, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1513, i32 47 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1516, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1520, i32 42 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1523, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1527, i32 42 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1530, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1534, i32 48 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1539, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1547, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1571, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1576, i32 47 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1592, i32 33 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1597, i32 5 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1628, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1634, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1640, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1650, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1656, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1668, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1674, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1687, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1694, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1703, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1713, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1720, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1726, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1015, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1022, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 375, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 380, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 861, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 872, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1039, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1045, i32 4 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1054, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1062, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 901, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 960, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 984, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 990, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 517, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 575, i32 4 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 603, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 639, i32 4 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 651, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 656, i32 49 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 656, i32 57 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 660, i32 4 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 464, i32 4 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 472, i32 4 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1120, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1362, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1377, i32 4 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1217, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1247, i32 6 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1166, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1185, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1332, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1336, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1079, i32 4 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1085, i32 4 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1092, i32 4 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1098, i32 4 }
@___asan_gen_.716 = private unnamed_addr constant [13 x i8] c"tegra124_soc\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2274, i32 36 }
@___asan_gen_.719 = private unnamed_addr constant [13 x i8] c"tegra210_soc\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2310, i32 36 }
@___asan_gen_.722 = private unnamed_addr constant [13 x i8] c"tegra186_soc\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2351, i32 36 }
@___asan_gen_.725 = private unnamed_addr constant [13 x i8] c"tegra194_soc\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2383, i32 36 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2275, i32 14 }
@___asan_gen_.731 = private unnamed_addr constant [22 x i8] c"tegra124_supply_names\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2225, i32 27 }
@___asan_gen_.734 = private unnamed_addr constant [19 x i8] c"tegra124_phy_types\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2232, i32 41 }
@___asan_gen_.737 = private unnamed_addr constant [22 x i8] c"tegra124_xusb_context\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2263, i32 44 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2226, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2227, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2228, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2229, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2233, i32 12 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2235, i32 12 }
@___asan_gen_.758 = private unnamed_addr constant [27 x i8] c"tegra124_xusb_context_ipfs\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2238, i32 27 }
@___asan_gen_.761 = private unnamed_addr constant [27 x i8] c"tegra124_xusb_context_fpci\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2252, i32 27 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2311, i32 14 }
@___asan_gen_.767 = private unnamed_addr constant [22 x i8] c"tegra210_supply_names\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2298, i32 27 }
@___asan_gen_.770 = private unnamed_addr constant [19 x i8] c"tegra210_phy_types\00", align 1
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2304, i32 41 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2300, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2352, i32 14 }
@___asan_gen_.779 = private unnamed_addr constant [22 x i8] c"tegra186_supply_names\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2334, i32 27 }
@___asan_gen_.782 = private unnamed_addr constant [19 x i8] c"tegra186_phy_types\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2338, i32 41 }
@___asan_gen_.785 = private unnamed_addr constant [22 x i8] c"tegra186_xusb_context\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2344, i32 44 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2384, i32 14 }
@___asan_gen_.791 = private unnamed_addr constant [22 x i8] c"tegra194_supply_names\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2375, i32 27 }
@___asan_gen_.794 = private unnamed_addr constant [19 x i8] c"tegra194_phy_types\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2378, i32 41 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2154, i32 5 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2044, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2049, i32 3 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2075, i32 3 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2081, i32 3 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2090, i32 3 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2114, i32 3 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2116, i32 3 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1984, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1992, i32 3 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1998, i32 3 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2022, i32 3 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2028, i32 3 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 1820, i32 4 }
@___asan_gen_.866 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.872 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.873 = private constant [33 x i8] c"../drivers/usb/host/xhci-tegra.c\00", align 1
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.873, i32 2183, i32 4 }
@llvm.compiler.used = appending global [292 x ptr] [ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_firmware308, ptr @__UNIQUE_ID_firmware309, ptr @__UNIQUE_ID_firmware310, ptr @__UNIQUE_ID_firmware311, ptr @__UNIQUE_ID_license316, ptr @__exitcall_tegra_xusb_exit, ptr @__initcall__kmod_xhci_tegra__312_2450_tegra_xusb_init6, ptr @__tegra_xusb_enable_firmware_messages._entry, ptr @__tegra_xusb_enable_firmware_messages._entry_ptr, ptr @tegra_xhci_id_work._entry, ptr @tegra_xhci_id_work._entry_ptr, ptr @tegra_xhci_set_port_power._entry, ptr @tegra_xhci_set_port_power._entry_ptr, ptr @tegra_xusb_enter_elpg._entry, ptr @tegra_xusb_enter_elpg._entry.215, ptr @tegra_xusb_enter_elpg._entry_ptr, ptr @tegra_xusb_enter_elpg._entry_ptr.217, ptr @tegra_xusb_exit, ptr @tegra_xusb_exit_elpg._entry, ptr @tegra_xusb_exit_elpg._entry.203, ptr @tegra_xusb_exit_elpg._entry.205, ptr @tegra_xusb_exit_elpg._entry.207, ptr @tegra_xusb_exit_elpg._entry_ptr, ptr @tegra_xusb_exit_elpg._entry_ptr.204, ptr @tegra_xusb_exit_elpg._entry_ptr.206, ptr @tegra_xusb_exit_elpg._entry_ptr.209, ptr @tegra_xusb_load_firmware._entry, ptr @tegra_xusb_load_firmware._entry.123, ptr @tegra_xusb_load_firmware._entry.126, ptr @tegra_xusb_load_firmware._entry.129, ptr @tegra_xusb_load_firmware._entry_ptr, ptr @tegra_xusb_load_firmware._entry_ptr.125, ptr @tegra_xusb_load_firmware._entry_ptr.128, ptr @tegra_xusb_load_firmware._entry_ptr.131, ptr @tegra_xusb_mbox_handle._entry, ptr @tegra_xusb_mbox_handle._entry.136, ptr @tegra_xusb_mbox_handle._entry.141, ptr @tegra_xusb_mbox_handle._entry.146, ptr @tegra_xusb_mbox_handle._entry.152, ptr @tegra_xusb_mbox_handle._entry_ptr, ptr @tegra_xusb_mbox_handle._entry_ptr.138, ptr @tegra_xusb_mbox_handle._entry_ptr.143, ptr @tegra_xusb_mbox_handle._entry_ptr.149, ptr @tegra_xusb_mbox_handle._entry_ptr.154, ptr @tegra_xusb_mbox_irq._entry, ptr @tegra_xusb_mbox_irq._entry_ptr, ptr @tegra_xusb_mbox_send._entry, ptr @tegra_xusb_mbox_send._entry.157, ptr @tegra_xusb_mbox_send._entry_ptr, ptr @tegra_xusb_mbox_send._entry_ptr.159, ptr @tegra_xusb_powerdomain_init._entry, ptr @tegra_xusb_powerdomain_init._entry.99, ptr @tegra_xusb_powerdomain_init._entry_ptr, ptr @tegra_xusb_powerdomain_init._entry_ptr.101, ptr @tegra_xusb_powergate_partitions._entry, ptr @tegra_xusb_powergate_partitions._entry.181, ptr @tegra_xusb_powergate_partitions._entry.184, ptr @tegra_xusb_powergate_partitions._entry.186, ptr @tegra_xusb_powergate_partitions._entry_ptr, ptr @tegra_xusb_powergate_partitions._entry_ptr.183, ptr @tegra_xusb_powergate_partitions._entry_ptr.185, ptr @tegra_xusb_powergate_partitions._entry_ptr.187, ptr @tegra_xusb_probe._entry, ptr @tegra_xusb_probe._entry.12, ptr @tegra_xusb_probe._entry.16, ptr @tegra_xusb_probe._entry.20, ptr @tegra_xusb_probe._entry.24, ptr @tegra_xusb_probe._entry.28, ptr @tegra_xusb_probe._entry.32, ptr @tegra_xusb_probe._entry.36, ptr @tegra_xusb_probe._entry.40, ptr @tegra_xusb_probe._entry.44, ptr @tegra_xusb_probe._entry.47, ptr @tegra_xusb_probe._entry.50, ptr @tegra_xusb_probe._entry.55, ptr @tegra_xusb_probe._entry.58, ptr @tegra_xusb_probe._entry.61, ptr @tegra_xusb_probe._entry.64, ptr @tegra_xusb_probe._entry.67, ptr @tegra_xusb_probe._entry.70, ptr @tegra_xusb_probe._entry.73, ptr @tegra_xusb_probe._entry.76, ptr @tegra_xusb_probe._entry.79, ptr @tegra_xusb_probe._entry.82, ptr @tegra_xusb_probe._entry.85, ptr @tegra_xusb_probe._entry.88, ptr @tegra_xusb_probe._entry.91, ptr @tegra_xusb_probe._entry.94, ptr @tegra_xusb_probe._entry_ptr, ptr @tegra_xusb_probe._entry_ptr.14, ptr @tegra_xusb_probe._entry_ptr.18, ptr @tegra_xusb_probe._entry_ptr.22, ptr @tegra_xusb_probe._entry_ptr.26, ptr @tegra_xusb_probe._entry_ptr.30, ptr @tegra_xusb_probe._entry_ptr.34, ptr @tegra_xusb_probe._entry_ptr.38, ptr @tegra_xusb_probe._entry_ptr.42, ptr @tegra_xusb_probe._entry_ptr.46, ptr @tegra_xusb_probe._entry_ptr.49, ptr @tegra_xusb_probe._entry_ptr.52, ptr @tegra_xusb_probe._entry_ptr.57, ptr @tegra_xusb_probe._entry_ptr.60, ptr @tegra_xusb_probe._entry_ptr.63, ptr @tegra_xusb_probe._entry_ptr.66, ptr @tegra_xusb_probe._entry_ptr.69, ptr @tegra_xusb_probe._entry_ptr.72, ptr @tegra_xusb_probe._entry_ptr.75, ptr @tegra_xusb_probe._entry_ptr.78, ptr @tegra_xusb_probe._entry_ptr.81, ptr @tegra_xusb_probe._entry_ptr.84, ptr @tegra_xusb_probe._entry_ptr.87, ptr @tegra_xusb_probe._entry_ptr.90, ptr @tegra_xusb_probe._entry_ptr.93, ptr @tegra_xusb_probe._entry_ptr.96, ptr @tegra_xusb_request_firmware._entry, ptr @tegra_xusb_request_firmware._entry.108, ptr @tegra_xusb_request_firmware._entry_ptr, ptr @tegra_xusb_request_firmware._entry_ptr.110, ptr @tegra_xusb_resume._entry, ptr @tegra_xusb_resume._entry_ptr, ptr @tegra_xusb_set_ss_clk._entry, ptr @tegra_xusb_set_ss_clk._entry.104, ptr @tegra_xusb_set_ss_clk._entry_ptr, ptr @tegra_xusb_set_ss_clk._entry_ptr.106, ptr @tegra_xusb_suspend._entry, ptr @tegra_xusb_suspend._entry_ptr, ptr @tegra_xusb_unpowergate_partitions._entry, ptr @tegra_xusb_unpowergate_partitions._entry.113, ptr @tegra_xusb_unpowergate_partitions._entry.116, ptr @tegra_xusb_unpowergate_partitions._entry.118, ptr @tegra_xusb_unpowergate_partitions._entry_ptr, ptr @tegra_xusb_unpowergate_partitions._entry_ptr.115, ptr @tegra_xusb_unpowergate_partitions._entry_ptr.117, ptr @tegra_xusb_unpowergate_partitions._entry_ptr.119, ptr @xhci_hub_ports_suspended._entry, ptr @xhci_hub_ports_suspended._entry_ptr, ptr @tegra_xusb_driver, ptr @.str, ptr @tegra_xusb_of_match, ptr @tegra_xusb_pm_ops, ptr @tegra_xusb_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @.str.153, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @.str.160, ptr @tegra_xusb_init_usb_phy.__key, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.182, ptr @tegra124_soc, ptr @tegra210_soc, ptr @tegra186_soc, ptr @tegra194_soc, ptr @.str.188, ptr @tegra124_supply_names, ptr @tegra124_phy_types, ptr @tegra124_xusb_context, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @tegra124_xusb_context_ipfs, ptr @tegra124_xusb_context_fpci, ptr @.str.195, ptr @tegra210_supply_names, ptr @tegra210_phy_types, ptr @.str.196, ptr @.str.197, ptr @tegra186_supply_names, ptr @tegra186_phy_types, ptr @tegra186_xusb_context, ptr @.str.198, ptr @tegra194_supply_names, ptr @tegra194_phy_types, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.208, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.216, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223], section "llvm.metadata"
@0 = internal global [216 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_probe._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_powerdomain_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_powerdomain_init._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_set_ss_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_set_ss_clk._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_request_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_request_firmware._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_unpowergate_partitions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_unpowergate_partitions._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_unpowergate_partitions._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_unpowergate_partitions._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_load_firmware._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_load_firmware._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_load_firmware._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_mbox_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_mbox_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_mbox_handle._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_mbox_handle._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_mbox_handle._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_mbox_handle._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_mbox_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_mbox_send._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_init_usb_phy.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xhci_id_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xhci_set_port_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_powergate_partitions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_powergate_partitions._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_powergate_partitions._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_powergate_partitions._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_soc to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_soc to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_soc to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_soc to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_supply_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_phy_types to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_xusb_context to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_xusb_context_ipfs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_xusb_context_fpci to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_supply_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_phy_types to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_supply_names to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_phy_types to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_xusb_context to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_supply_names to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_phy_types to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_exit_elpg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_exit_elpg._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_exit_elpg._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_exit_elpg._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_enter_elpg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_enter_elpg._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_hub_ports_suspended._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xusb_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xusb_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xhci_init_driver(ptr noundef nonnull @tegra_xhci_hc_driver, ptr noundef nonnull @tegra_xhci_overrides) #10
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_xusb_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_xusb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_xusb_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xhci_setup(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xhci_gen_setup(ptr noundef %hcd, ptr noundef nonnull @tegra_xhci_quirks) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_gen_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tegra_xhci_quirks(ptr nocapture noundef readonly %dev, ptr nocapture noundef %xhci) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %quirks = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %quirks, align 8
  %or = or i64 %3, 65536
  store i64 %or, ptr %quirks, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %soc = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc, align 4
  %lpm_support = getelementptr inbounds %struct.tegra_xusb_soc, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %lpm_support to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lpm_support, align 2, !range !449
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %or3 = or i64 %3, 67584
  %8 = ptrtoint ptr %quirks to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %or3, ptr %quirks, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xusb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  %regs = alloca ptr, align 4
  %prop = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #10
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regs) #10
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %regs, align 4, !annotation !450
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 300, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup498_crit_edge, label %if.end

entry.cleanup498_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup498

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #10
  %soc = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 9
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %soc, align 4
  %lock = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @tegra_xusb_probe.__key) #10
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %4 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc, align 4
  %context.i = getelementptr inbounds %struct.tegra_xusb_soc, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context.i, align 4
  %num_offsets.i = getelementptr inbounds %struct.anon.85, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %num_offsets.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_offsets.i, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 4) #10
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !451

devm_kcalloc.exit.thread.i:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %context228.i = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 37
  %12 = ptrtoint ptr %context228.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %context228.i, align 4
  br label %cleanup498

devm_kcalloc.exit.i:                              ; preds = %if.end
  %13 = extractvalue { i32, i1 } %10, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %13, i32 noundef 3520) #10
  %context2.i = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 37
  %14 = ptrtoint ptr %context2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i.i, ptr %context2.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.cleanup498_crit_edge, label %if.end.i

devm_kcalloc.exit.i.cleanup498_crit_edge:         ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup498

if.end.i:                                         ; preds = %devm_kcalloc.exit.i
  %num_offsets7.i = getelementptr inbounds %struct.tegra_xusb_context_soc, ptr %7, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %num_offsets7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_offsets7.i, align 4
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 4) #10
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %devm_kcalloc.exit26.i.thread, label %devm_kcalloc.exit26.i, !prof !451

devm_kcalloc.exit26.i.thread:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %fpci10.i826 = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 37, i32 1
  %19 = ptrtoint ptr %fpci10.i826 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %fpci10.i826, align 4
  br label %cleanup498

devm_kcalloc.exit26.i:                            ; preds = %if.end.i
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %22 = extractvalue { i32, i1 } %17, 0
  %call5.i.i23.i = tail call noalias ptr @devm_kmalloc(ptr noundef %21, i32 noundef %22, i32 noundef 3520) #10
  %fpci10.i = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 37, i32 1
  %23 = ptrtoint ptr %fpci10.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5.i.i23.i, ptr %fpci10.i, align 4
  %tobool13.not.i = icmp eq ptr %call5.i.i23.i, null
  br i1 %tobool13.not.i, label %devm_kcalloc.exit26.i.cleanup498_crit_edge, label %if.end10

devm_kcalloc.exit26.i.cleanup498_crit_edge:       ; preds = %devm_kcalloc.exit26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup498

if.end10:                                         ; preds = %devm_kcalloc.exit26.i
  %call11 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %regs) #10
  %regs12 = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %regs12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call11, ptr %regs12, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %call11 to i32
  br label %cleanup498

if.end18:                                         ; preds = %if.end10
  %call19 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #10
  %fpci_base = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %fpci_base to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call19, ptr %fpci_base, align 4
  %cmp.i769 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i769, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %call19 to i32
  br label %cleanup498

if.end25:                                         ; preds = %if.end18
  %28 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %soc, align 4
  %has_ipfs = getelementptr inbounds %struct.tegra_xusb_soc, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %has_ipfs to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %has_ipfs, align 1, !range !449
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool27.not = icmp eq i8 %31, 0
  br i1 %tobool27.not, label %if.end25.if.end36_crit_edge, label %if.then28

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then28:                                        ; preds = %if.end25
  %call29 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 2) #10
  %ipfs_base = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 7
  %32 = ptrtoint ptr %ipfs_base to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call29, ptr %ipfs_base, align 4
  %cmp.i770 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i770, label %if.then32, label %if.then28.if.end36_crit_edge

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %call29 to i32
  br label %cleanup498

if.end36:                                         ; preds = %if.then28.if.end36_crit_edge, %if.end25.if.end36_crit_edge
  %call37 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %xhci_irq = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %xhci_irq to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call37, ptr %xhci_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp39 = icmp slt i32 %call37, 0
  br i1 %cmp39, label %if.end36.cleanup498_crit_edge, label %if.end42

if.end36.cleanup498_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup498

if.end42:                                         ; preds = %if.end36
  %call43 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #10
  %mbox_irq = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 5
  %35 = ptrtoint ptr %mbox_irq to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call43, ptr %mbox_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp45 = icmp slt i32 %call43, 0
  br i1 %cmp45, label %if.end42.cleanup498_crit_edge, label %if.end48

if.end42.cleanup498_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup498

if.end48:                                         ; preds = %if.end42
  %call50 = call ptr @tegra_xusb_padctl_get(ptr noundef %dev) #10
  %padctl = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 11
  %36 = ptrtoint ptr %padctl to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call50, ptr %padctl, align 4
  %cmp.i771 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i771, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %call50 to i32
  br label %cleanup498

if.end56:                                         ; preds = %if.end48
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %38 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node, align 8
  %call58 = call fastcc ptr @of_parse_phandle(ptr noundef %39)
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.end56.put_padctl_crit_edge, label %if.end61

if.end56.put_padctl_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_padctl

if.end61:                                         ; preds = %if.end56
  %call62 = call i32 @of_irq_parse_one(ptr noundef nonnull %call58, i32 noundef 0, ptr noundef nonnull %args) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then64, label %do.body73

if.then64:                                        ; preds = %if.end61
  %call65 = call i32 @of_irq_get(ptr noundef nonnull %call58, i32 noundef 0) #10
  %padctl_irq = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 6
  %40 = ptrtoint ptr %padctl_irq to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call65, ptr %padctl_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call65)
  %cmp67 = icmp slt i32 %call65, 1
  br i1 %cmp67, label %if.then68, label %if.then64.if.end83_crit_edge

if.then64.if.end83_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then68:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp70 = icmp eq i32 %call65, 0
  %spec.select = select i1 %cmp70, i32 -19, i32 %call65
  br label %put_padctl

do.body73:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xusb_probe.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_xusb_probe, %if.then78)) #10
          to label %if.end83 [label %if.then78], !srcloc !452

if.then78:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xusb_probe.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull %call58) #10
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %do.body73, %if.then64.if.end83_crit_edge
  %call85 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  %host_clk = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 12
  %41 = ptrtoint ptr %host_clk to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call85, ptr %host_clk, align 4
  %cmp.i772 = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i772, label %if.then88, label %if.end95

if.then88:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %call85 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %42) #13
  br label %put_padctl

if.end95:                                         ; preds = %if.end83
  %call97 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  %falcon_clk = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 13
  %43 = ptrtoint ptr %falcon_clk to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call97, ptr %falcon_clk, align 4
  %cmp.i773 = icmp ugt ptr %call97, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i773, label %if.then100, label %if.end107

if.then100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %call97 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %44) #13
  br label %put_padctl

if.end107:                                        ; preds = %if.end95
  %call109 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  %ss_clk = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 14
  %45 = ptrtoint ptr %ss_clk to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call109, ptr %ss_clk, align 4
  %cmp.i774 = icmp ugt ptr %call109, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i774, label %if.then112, label %if.end119

if.then112:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %call109 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %46) #13
  br label %put_padctl

if.end119:                                        ; preds = %if.end107
  %call121 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  %ss_src_clk = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 15
  %47 = ptrtoint ptr %ss_src_clk to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call121, ptr %ss_src_clk, align 4
  %cmp.i775 = icmp ugt ptr %call121, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i775, label %if.then124, label %if.end131

if.then124:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %call121 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %48) #13
  br label %put_padctl

if.end131:                                        ; preds = %if.end119
  %call133 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  %hs_src_clk = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 16
  %49 = ptrtoint ptr %hs_src_clk to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call133, ptr %hs_src_clk, align 4
  %cmp.i776 = icmp ugt ptr %call133, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i776, label %if.then136, label %if.end143

if.then136:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %call133 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %50) #13
  br label %put_padctl

if.end143:                                        ; preds = %if.end131
  %call145 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.27) #10
  %fs_src_clk = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 17
  %51 = ptrtoint ptr %fs_src_clk to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call145, ptr %fs_src_clk, align 4
  %cmp.i777 = icmp ugt ptr %call145, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i777, label %if.then148, label %if.end155

if.then148:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %call145 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %52) #13
  br label %put_padctl

if.end155:                                        ; preds = %if.end143
  %call157 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.31) #10
  %pll_u_480m = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 18
  %53 = ptrtoint ptr %pll_u_480m to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call157, ptr %pll_u_480m, align 4
  %cmp.i778 = icmp ugt ptr %call157, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i778, label %if.then160, label %if.end167

if.then160:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %call157 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %54) #13
  br label %put_padctl

if.end167:                                        ; preds = %if.end155
  %call169 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.35) #10
  %clk_m = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 19
  %55 = ptrtoint ptr %clk_m to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call169, ptr %clk_m, align 4
  %cmp.i779 = icmp ugt ptr %call169, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i779, label %if.then172, label %if.end179

if.then172:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %call169 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %56) #13
  br label %put_padctl

if.end179:                                        ; preds = %if.end167
  %call181 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.39) #10
  %pll_e = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 20
  %57 = ptrtoint ptr %pll_e to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call181, ptr %pll_e, align 4
  %cmp.i780 = icmp ugt ptr %call181, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i780, label %if.then184, label %if.end191

if.then184:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %call181 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %58) #13
  br label %put_padctl

if.end191:                                        ; preds = %if.end179
  %59 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %of_node, align 8
  %call.i781 = call ptr @of_find_property(ptr noundef %60, ptr noundef nonnull @.str.43, ptr noundef null) #10
  %tobool.i.not = icmp eq ptr %call.i781, null
  br i1 %tobool.i.not, label %if.then195, label %if.else220

if.then195:                                       ; preds = %if.end191
  %call.i.i = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %host_rst = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 21
  %61 = ptrtoint ptr %host_rst to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i.i, ptr %host_rst, align 4
  %cmp.i782 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i782, label %if.then200, label %if.end207

if.then200:                                       ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %call.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %62) #13
  br label %put_padctl

if.end207:                                        ; preds = %if.then195
  %call.i.i783 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %ss_rst = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 22
  %63 = ptrtoint ptr %ss_rst to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i.i783, ptr %ss_rst, align 4
  %cmp.i784 = icmp ugt ptr %call.i.i783, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i784, label %if.then212, label %if.end207.if.end226_crit_edge

if.end207.if.end226_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end226

if.then212:                                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %call.i.i783 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef %64) #13
  br label %put_padctl

if.else220:                                       ; preds = %if.end191
  %call222 = call fastcc i32 @tegra_xusb_powerdomain_init(ptr noundef %dev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %if.else220.if.end226_crit_edge, label %if.else220.put_powerdomains_crit_edge

if.else220.put_powerdomains_crit_edge:            ; preds = %if.else220
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_powerdomains

if.else220.if.end226_crit_edge:                   ; preds = %if.else220
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end226

if.end226:                                        ; preds = %if.else220.if.end226_crit_edge, %if.end207.if.end226_crit_edge
  %65 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %soc, align 4
  %num_supplies = getelementptr inbounds %struct.tegra_xusb_soc, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_supplies, align 4
  %69 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %68, i32 12) #10
  %70 = extractvalue { i32, i1 } %69, 1
  br i1 %70, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !451

devm_kcalloc.exit.thread:                         ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #12
  %supplies817 = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 10
  %71 = ptrtoint ptr %supplies817 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %supplies817, align 4
  br label %put_powerdomains

devm_kcalloc.exit:                                ; preds = %if.end226
  %72 = extractvalue { i32, i1 } %69, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %72, i32 noundef 3520) #10
  %supplies = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 10
  %73 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call5.i.i, ptr %supplies, align 4
  %tobool231.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool231.not, label %devm_kcalloc.exit.put_powerdomains_crit_edge, label %if.end233

devm_kcalloc.exit.put_powerdomains_crit_edge:     ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_powerdomains

if.end233:                                        ; preds = %devm_kcalloc.exit
  %74 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %soc, align 4
  %supply_names = getelementptr inbounds %struct.tegra_xusb_soc, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %supply_names to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %supply_names, align 4
  %num_supplies237 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %75, i32 0, i32 2
  %78 = ptrtoint ptr %num_supplies237 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_supplies237, align 4
  call void @regulator_bulk_set_supply_names(ptr noundef nonnull %call5.i.i, ptr noundef %77, i32 noundef %79) #10
  %80 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %soc, align 4
  %num_supplies240 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %num_supplies240 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_supplies240, align 4
  %84 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %supplies, align 4
  %call242 = call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef %83, ptr noundef %85) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call242)
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %for.cond.preheader, label %do.end247

for.cond.preheader:                               ; preds = %if.end233
  %86 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %soc, align 4
  %num_types829 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %num_types829 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_types829, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp251830.not = icmp eq i32 %89, 0
  br i1 %cmp251830.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %num_usb_phys = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 29
  %num_phys = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 27
  br label %for.body

do.end247:                                        ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %call242) #13
  br label %put_powerdomains

for.body:                                         ; preds = %if.end259.for.body_crit_edge, %for.body.lr.ph
  %90 = phi ptr [ %87, %for.body.lr.ph ], [ %99, %if.end259.for.body_crit_edge ]
  %i.0831 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end259.for.body_crit_edge ]
  %phy_types = getelementptr inbounds %struct.tegra_xusb_soc, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %phy_types to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %phy_types, align 4
  %arrayidx = getelementptr %struct.tegra_xusb_phy_type, ptr %92, i32 %i.0831
  %93 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx, align 4
  %call253 = call i32 @strncmp(ptr noundef %94, ptr noundef nonnull dereferenceable(5) @.str.53, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %if.then255, label %for.body.if.end259_crit_edge

for.body.if.end259_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end259

if.then255:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %num = getelementptr %struct.tegra_xusb_phy_type, ptr %92, i32 %i.0831, i32 1
  %95 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num, align 4
  %97 = ptrtoint ptr %num_usb_phys to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %num_usb_phys, align 4
  br label %if.end259

if.end259:                                        ; preds = %if.then255, %for.body.if.end259_crit_edge
  %98 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %soc, align 4
  %phy_types261 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %phy_types261 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %phy_types261, align 4
  %num263 = getelementptr %struct.tegra_xusb_phy_type, ptr %101, i32 %i.0831, i32 1
  %102 = ptrtoint ptr %num263 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num263, align 4
  %104 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %num_phys, align 4
  %add = add i32 %105, %103
  store i32 %add, ptr %num_phys, align 4
  %inc = add nuw i32 %i.0831, 1
  %num_types = getelementptr inbounds %struct.tegra_xusb_soc, ptr %99, i32 0, i32 4
  %106 = ptrtoint ptr %num_types to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %num_types, align 4
  %cmp251 = icmp ult i32 %inc, %107
  br i1 %cmp251, label %if.end259.for.body_crit_edge, label %if.end259.for.end_crit_edge

if.end259.for.end_crit_edge:                      ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end259.for.body_crit_edge:                     ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end259.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %num_phys265 = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 27
  %108 = ptrtoint ptr %num_phys265 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_phys265, align 4
  %110 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %109, i32 4) #10
  %111 = extractvalue { i32, i1 } %110, 1
  br i1 %111, label %devm_kcalloc.exit788.thread, label %devm_kcalloc.exit788, !prof !451

devm_kcalloc.exit788.thread:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %phys820 = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 26
  %112 = ptrtoint ptr %phys820 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %phys820, align 4
  br label %put_powerdomains

devm_kcalloc.exit788:                             ; preds = %for.end
  %113 = extractvalue { i32, i1 } %110, 0
  %call5.i.i785 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %113, i32 noundef 3520) #10
  %phys = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 26
  %114 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call5.i.i785, ptr %phys, align 4
  %tobool268.not = icmp eq ptr %call5.i.i785, null
  br i1 %tobool268.not, label %devm_kcalloc.exit788.put_powerdomains_crit_edge, label %for.cond271.preheader

devm_kcalloc.exit788.put_powerdomains_crit_edge:  ; preds = %devm_kcalloc.exit788
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_powerdomains

for.cond271.preheader:                            ; preds = %devm_kcalloc.exit788
  %115 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %soc, align 4
  %num_types273837 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %num_types273837 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %num_types273837, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp274838.not = icmp eq i32 %118, 0
  br i1 %cmp274838.not, label %for.cond271.preheader.for.end309_crit_edge, label %for.cond271.preheader.for.body275_crit_edge

for.cond271.preheader.for.body275_crit_edge:      ; preds = %for.cond271.preheader
  br label %for.body275

for.cond271.preheader.for.end309_crit_edge:       ; preds = %for.cond271.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end309

for.body275:                                      ; preds = %for.inc307.for.body275_crit_edge, %for.cond271.preheader.for.body275_crit_edge
  %k.0841 = phi i32 [ %k.1.lcssa, %for.inc307.for.body275_crit_edge ], [ 0, %for.cond271.preheader.for.body275_crit_edge ]
  %i.1839 = phi i32 [ %inc308, %for.inc307.for.body275_crit_edge ], [ 0, %for.cond271.preheader.for.body275_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prop) #10
  %119 = ptrtoint ptr %prop to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 -1, ptr %prop, align 8
  %120 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %soc, align 4
  %phy_types278832 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %phy_types278832 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %phy_types278832, align 4
  %num280833 = getelementptr %struct.tegra_xusb_phy_type, ptr %123, i32 %i.1839, i32 1
  %124 = ptrtoint ptr %num280833 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %num280833, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp281834.not = icmp eq i32 %125, 0
  br i1 %cmp281834.not, label %for.body275.for.inc307_crit_edge, label %for.body275.for.body282_crit_edge

for.body275.for.body282_crit_edge:                ; preds = %for.body275
  br label %for.body282

for.body275.for.inc307_crit_edge:                 ; preds = %for.body275
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc307

for.body282:                                      ; preds = %if.end300.for.body282_crit_edge, %for.body275.for.body282_crit_edge
  %126 = phi ptr [ %135, %if.end300.for.body282_crit_edge ], [ %123, %for.body275.for.body282_crit_edge ]
  %k.1836 = phi i32 [ %inc302, %if.end300.for.body282_crit_edge ], [ %k.0841, %for.body275.for.body282_crit_edge ]
  %j.0835 = phi i32 [ %inc305, %if.end300.for.body282_crit_edge ], [ 0, %for.body275.for.body282_crit_edge ]
  %arrayidx279 = getelementptr %struct.tegra_xusb_phy_type, ptr %126, i32 %i.1839
  %127 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx279, align 4
  %call287 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop, i32 noundef 8, ptr noundef nonnull @.str.54, ptr noundef %128, i32 noundef %j.0835)
  %call290 = call ptr @devm_phy_optional_get(ptr noundef %dev, ptr noundef nonnull %prop) #10
  %cmp.i789 = icmp ugt ptr %call290, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i789, label %cleanup, label %if.end300

if.end300:                                        ; preds = %for.body282
  %129 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %phys, align 4
  %inc302 = add i32 %k.1836, 1
  %arrayidx303 = getelementptr ptr, ptr %130, i32 %k.1836
  %131 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call290, ptr %arrayidx303, align 4
  %inc305 = add nuw i32 %j.0835, 1
  %132 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %soc, align 4
  %phy_types278 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %133, i32 0, i32 3
  %134 = ptrtoint ptr %phy_types278 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %phy_types278, align 4
  %num280 = getelementptr %struct.tegra_xusb_phy_type, ptr %135, i32 %i.1839, i32 1
  %136 = ptrtoint ptr %num280 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %num280, align 4
  %cmp281 = icmp ult i32 %inc305, %137
  br i1 %cmp281, label %if.end300.for.body282_crit_edge, label %if.end300.for.inc307_crit_edge

if.end300.for.inc307_crit_edge:                   ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc307

if.end300.for.body282_crit_edge:                  ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body282

cleanup:                                          ; preds = %for.body282
  call void @__sanitizer_cov_trace_pc() #12
  %138 = ptrtoint ptr %call290 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef nonnull %prop, i32 noundef %138) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prop) #10
  br label %put_powerdomains

for.inc307:                                       ; preds = %if.end300.for.inc307_crit_edge, %for.body275.for.inc307_crit_edge
  %k.1.lcssa = phi i32 [ %k.0841, %for.body275.for.inc307_crit_edge ], [ %inc302, %if.end300.for.inc307_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prop) #10
  %inc308 = add nuw i32 %i.1839, 1
  %139 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %soc, align 4
  %num_types273 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %140, i32 0, i32 4
  %141 = ptrtoint ptr %num_types273 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %num_types273, align 4
  %cmp274 = icmp ult i32 %inc308, %142
  br i1 %cmp274, label %for.inc307.for.body275_crit_edge, label %for.inc307.for.end309_crit_edge

for.inc307.for.end309_crit_edge:                  ; preds = %for.inc307
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end309

for.inc307.for.body275_crit_edge:                 ; preds = %for.inc307
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body275

for.end309:                                       ; preds = %for.inc307.for.end309_crit_edge, %for.cond271.preheader.for.end309_crit_edge
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %143 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i790 = icmp eq ptr %144, null
  br i1 %tobool.not.i790, label %if.end.i791, label %for.end309.dev_name.exit_crit_edge

for.end309.dev_name.exit_crit_edge:               ; preds = %for.end309
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i791:                                      ; preds = %for.end309
  call void @__sanitizer_cov_trace_pc() #12
  %145 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i791, %for.end309.dev_name.exit_crit_edge
  %retval.0.i792 = phi ptr [ %146, %if.end.i791 ], [ %144, %for.end309.dev_name.exit_crit_edge ]
  %call313 = call ptr @usb_create_hcd(ptr noundef nonnull @tegra_xhci_hc_driver, ptr noundef %dev, ptr noundef %retval.0.i792) #10
  %hcd = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 2
  %147 = ptrtoint ptr %hcd to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call313, ptr %hcd, align 4
  %tobool315.not = icmp eq ptr %call313, null
  br i1 %tobool315.not, label %dev_name.exit.put_powerdomains_crit_edge, label %if.end317

dev_name.exit.put_powerdomains_crit_edge:         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_powerdomains

if.end317:                                        ; preds = %dev_name.exit
  %skip_phy_initialization = getelementptr inbounds %struct.usb_hcd, ptr %call313, i32 0, i32 14
  %148 = ptrtoint ptr %skip_phy_initialization to i32
  call void @__asan_load2_noabort(i32 %148)
  %bf.load = load i16, ptr %skip_phy_initialization, align 4
  %bf.set = or i16 %bf.load, 2048
  store i16 %bf.set, ptr %skip_phy_initialization, align 4
  %149 = ptrtoint ptr %regs12 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regs12, align 4
  %151 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %hcd, align 4
  %regs321 = getelementptr inbounds %struct.usb_hcd, ptr %152, i32 0, i32 16
  %153 = ptrtoint ptr %regs321 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %150, ptr %regs321, align 4
  %154 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regs, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %155, align 4
  %158 = load ptr, ptr %hcd, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %158, i32 0, i32 17
  %159 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %157, ptr %rsrc_start, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %155, i32 0, i32 1
  %160 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %end.i, align 4
  %162 = load i32, ptr %155, align 4
  %sub.i = add i32 %161, 1
  %add.i = sub i32 %sub.i, %162
  %163 = load ptr, ptr %hcd, align 4
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %163, i32 0, i32 18
  %164 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %add.i, ptr %rsrc_len, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %165 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call325 = call fastcc i32 @tegra_xusb_clk_enable(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call325)
  %tobool326.not = icmp eq i32 %call325, 0
  br i1 %tobool326.not, label %if.end332, label %do.end330

do.end330:                                        ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #12
  %166 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.59, i32 noundef %call325) #13
  br label %put_hcd

if.end332:                                        ; preds = %if.end317
  %168 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %soc, align 4
  %num_supplies334 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %num_supplies334 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %num_supplies334, align 4
  %172 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %supplies, align 4
  %call336 = call i32 @regulator_bulk_enable(i32 noundef %171, ptr noundef %173) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call336)
  %tobool337.not = icmp eq i32 %call336, 0
  br i1 %tobool337.not, label %if.end343, label %do.end341

do.end341:                                        ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #12
  %174 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.62, i32 noundef %call336) #13
  br label %disable_clk

if.end343:                                        ; preds = %if.end332
  %call344 = call fastcc i32 @tegra_xusb_phy_enable(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call344)
  %cmp345 = icmp slt i32 %call344, 0
  br i1 %cmp345, label %do.end349, label %if.end351

do.end349:                                        ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %call344) #13
  br label %disable_regulator

if.end351:                                        ; preds = %if.end343
  %176 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %call.i, align 4
  %call353 = call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %177)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call353)
  %cmp354 = icmp slt i32 %call353, 0
  br i1 %cmp354, label %do.end358, label %if.end360

do.end358:                                        ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68, i32 noundef %call353) #13
  br label %disable_phy

if.end360:                                        ; preds = %if.end351
  %call361 = call fastcc i32 @tegra_xusb_request_firmware(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call361)
  %cmp362 = icmp slt i32 %call361, 0
  br i1 %cmp362, label %do.end366, label %if.end368

do.end366:                                        ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef %call361) #13
  br label %disable_phy

if.end368:                                        ; preds = %if.end360
  %call369 = call fastcc i32 @tegra_xusb_unpowergate_partitions(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call369)
  %tobool370.not = icmp eq i32 %call369, 0
  br i1 %tobool370.not, label %if.end372, label %if.end368.free_firmware_crit_edge

if.end368.free_firmware_crit_edge:                ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_firmware

if.end372:                                        ; preds = %if.end368
  call fastcc void @tegra_xusb_config(ptr noundef nonnull %call.i)
  %call373 = call fastcc i32 @tegra_xusb_load_firmware(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call373)
  %cmp374 = icmp slt i32 %call373, 0
  br i1 %cmp374, label %do.end378, label %if.end380

do.end378:                                        ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.74, i32 noundef %call373) #13
  br label %powergate

if.end380:                                        ; preds = %if.end372
  %178 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %hcd, align 4
  %180 = ptrtoint ptr %xhci_irq to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %xhci_irq, align 4
  %call383 = call i32 @usb_add_hcd(ptr noundef %179, i32 noundef %181, i32 noundef 128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call383)
  %cmp384 = icmp slt i32 %call383, 0
  br i1 %cmp384, label %do.end388, label %if.end390

do.end388:                                        ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77, i32 noundef %call383) #13
  br label %powergate

if.end390:                                        ; preds = %if.end380
  %182 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %hcd, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 8
  %call392 = call i32 @device_wakeup_enable(ptr noundef %185) #10
  %186 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %hcd, align 4
  %call.i793 = call i32 @usb_hcd_is_primary_hcd(ptr noundef %187) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i793)
  %tobool.not.i794 = icmp eq i32 %call.i793, 0
  br i1 %tobool.not.i794, label %if.else.i, label %if.end390.hcd_to_xhci.exit_crit_edge

if.end390.hcd_to_xhci.exit_crit_edge:             ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #12
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #12
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %187, i32 0, i32 25
  %188 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %if.end390.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %189, %if.else.i ], [ %187, %if.end390.hcd_to_xhci.exit_crit_edge ]
  %190 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i797 = icmp eq ptr %191, null
  br i1 %tobool.not.i797, label %if.end.i798, label %hcd_to_xhci.exit.dev_name.exit800_crit_edge

hcd_to_xhci.exit.dev_name.exit800_crit_edge:      ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit800

if.end.i798:                                      ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #12
  %192 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev, align 4
  br label %dev_name.exit800

dev_name.exit800:                                 ; preds = %if.end.i798, %hcd_to_xhci.exit.dev_name.exit800_crit_edge
  %retval.0.i799 = phi ptr [ %193, %if.end.i798 ], [ %191, %hcd_to_xhci.exit.dev_name.exit800_crit_edge ]
  %194 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %hcd, align 4
  %call399 = call ptr @usb_create_shared_hcd(ptr noundef nonnull @tegra_xhci_hc_driver, ptr noundef %dev, ptr noundef %retval.0.i799, ptr noundef %195) #10
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 1
  %196 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %call399, ptr %shared_hcd, align 4
  %tobool401.not = icmp eq ptr %call399, null
  br i1 %tobool401.not, label %do.end405, label %if.end407

do.end405:                                        ; preds = %dev_name.exit800
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80) #13
  br label %remove_usb2

if.end407:                                        ; preds = %dev_name.exit800
  %197 = ptrtoint ptr %xhci_irq to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %xhci_irq, align 4
  %call410 = call i32 @usb_add_hcd(ptr noundef nonnull %call399, i32 noundef %198, i32 noundef 128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call410)
  %cmp411 = icmp slt i32 %call410, 0
  br i1 %cmp411, label %do.end415, label %if.end417

do.end415:                                        ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.83, i32 noundef %call410) #13
  br label %put_usb3

if.end417:                                        ; preds = %if.end407
  %199 = ptrtoint ptr %mbox_irq to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %mbox_irq, align 4
  %201 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i802 = icmp eq ptr %202, null
  br i1 %tobool.not.i802, label %if.end.i803, label %if.end417.dev_name.exit805_crit_edge

if.end417.dev_name.exit805_crit_edge:             ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit805

if.end.i803:                                      ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #12
  %203 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dev, align 4
  br label %dev_name.exit805

dev_name.exit805:                                 ; preds = %if.end.i803, %if.end417.dev_name.exit805_crit_edge
  %retval.0.i804 = phi ptr [ %204, %if.end.i803 ], [ %202, %if.end417.dev_name.exit805_crit_edge ]
  %call422 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %200, ptr noundef nonnull @tegra_xusb_mbox_irq, ptr noundef nonnull @tegra_xusb_mbox_thread, i32 noundef 0, ptr noundef %retval.0.i804, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call422)
  %cmp423 = icmp slt i32 %call422, 0
  br i1 %cmp423, label %do.end427, label %if.end429

do.end427:                                        ; preds = %dev_name.exit805
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.86, i32 noundef %call422) #13
  br label %remove_usb3

if.end429:                                        ; preds = %dev_name.exit805
  %padctl_irq430 = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 6
  %205 = ptrtoint ptr %padctl_irq430 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %padctl_irq430, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool431.not = icmp eq i32 %206, 0
  br i1 %tobool431.not, label %if.end429.if.end445_crit_edge, label %if.then432

if.end429.if.end445_crit_edge:                    ; preds = %if.end429
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end445

if.then432:                                       ; preds = %if.end429
  %207 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i807 = icmp eq ptr %208, null
  br i1 %tobool.not.i807, label %if.end.i808, label %if.then432.dev_name.exit810_crit_edge

if.then432.dev_name.exit810_crit_edge:            ; preds = %if.then432
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit810

if.end.i808:                                      ; preds = %if.then432
  call void @__sanitizer_cov_trace_pc() #12
  %209 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev, align 4
  br label %dev_name.exit810

dev_name.exit810:                                 ; preds = %if.end.i808, %if.then432.dev_name.exit810_crit_edge
  %retval.0.i809 = phi ptr [ %210, %if.end.i808 ], [ %208, %if.then432.dev_name.exit810_crit_edge ]
  %call437 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %206, ptr noundef null, ptr noundef nonnull @tegra_xusb_padctl_irq, i32 noundef 8192, ptr noundef %retval.0.i809, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call437)
  %cmp438 = icmp slt i32 %call437, 0
  br i1 %cmp438, label %do.end442, label %dev_name.exit810.if.end445_crit_edge

dev_name.exit810.if.end445_crit_edge:             ; preds = %dev_name.exit810
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end445

do.end442:                                        ; preds = %dev_name.exit810
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.89, i32 noundef %call437) #13
  br label %remove_usb3

if.end445:                                        ; preds = %dev_name.exit810.if.end445_crit_edge, %if.end429.if.end445_crit_edge
  %call446 = call fastcc i32 @tegra_xusb_enable_firmware_messages(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call446)
  %cmp447 = icmp slt i32 %call446, 0
  br i1 %cmp447, label %do.end451, label %if.end453

do.end451:                                        ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.92, i32 noundef %call446) #13
  br label %remove_usb3

if.end453:                                        ; preds = %if.end445
  %call454 = call fastcc i32 @tegra_xusb_init_usb_phy(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call454)
  %cmp455 = icmp slt i32 %call454, 0
  br i1 %cmp455, label %do.end459, label %if.end461

do.end459:                                        ; preds = %if.end453
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.95, i32 noundef %call454) #13
  br label %remove_usb3

if.end461:                                        ; preds = %if.end453
  %211 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %hcd, align 4
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %212, i32 0, i32 11
  %213 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %root_hub, align 8
  %dev464 = getelementptr inbounds %struct.usb_device, ptr %214, i32 0, i32 15
  %call465 = call i32 @device_init_wakeup(ptr noundef %dev464, i1 noundef zeroext true) #10
  %215 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %shared_hcd, align 4
  %root_hub468 = getelementptr inbounds %struct.usb_bus, ptr %216, i32 0, i32 11
  %217 = ptrtoint ptr %root_hub468 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %root_hub468, align 8
  %dev469 = getelementptr inbounds %struct.usb_device, ptr %218, i32 0, i32 15
  %call470 = call i32 @device_init_wakeup(ptr noundef %dev469, i1 noundef zeroext true) #10
  %219 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %call.i, align 4
  call void @__pm_runtime_use_autosuspend(ptr noundef %220, i1 noundef zeroext true) #10
  %221 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %call.i, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %222, i32 noundef 2000) #10
  %223 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %call.i, align 4
  %call.i811 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %224, i32 0, i32 12, i32 22
  %225 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %225)
  store volatile i64 %call.i811, ptr %last_busy.i, align 8
  %226 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %call.i, align 4
  %call.i812 = call i32 @__pm_runtime_set_status(ptr noundef %227, i32 noundef 0) #10
  %228 = ptrtoint ptr %padctl_irq430 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %padctl_irq430, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %tobool477.not = icmp eq i32 %229, 0
  br i1 %tobool477.not, label %if.end461.cleanup498_crit_edge, label %if.then478

if.end461.cleanup498_crit_edge:                   ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup498

if.then478:                                       ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #12
  %230 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %call.i, align 4
  %call480 = call i32 @device_init_wakeup(ptr noundef %231, i1 noundef zeroext true) #10
  %232 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %call.i, align 4
  call void @pm_runtime_enable(ptr noundef %233) #10
  br label %cleanup498

remove_usb3:                                      ; preds = %do.end459, %do.end451, %do.end442, %do.end427
  %err.2 = phi i32 [ %call422, %do.end427 ], [ %call437, %do.end442 ], [ %call446, %do.end451 ], [ %call454, %do.end459 ]
  %234 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %shared_hcd, align 4
  call void @usb_remove_hcd(ptr noundef %235) #10
  br label %put_usb3

put_usb3:                                         ; preds = %remove_usb3, %do.end415
  %err.3 = phi i32 [ %call410, %do.end415 ], [ %err.2, %remove_usb3 ]
  %236 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %shared_hcd, align 4
  call void @usb_put_hcd(ptr noundef %237) #10
  br label %remove_usb2

remove_usb2:                                      ; preds = %put_usb3, %do.end405
  %err.4 = phi i32 [ %err.3, %put_usb3 ], [ -12, %do.end405 ]
  %238 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %hcd, align 4
  call void @usb_remove_hcd(ptr noundef %239) #10
  br label %powergate

powergate:                                        ; preds = %remove_usb2, %do.end388, %do.end378
  %err.5 = phi i32 [ %call373, %do.end378 ], [ %call383, %do.end388 ], [ %err.4, %remove_usb2 ]
  call fastcc void @tegra_xusb_powergate_partitions(ptr noundef nonnull %call.i)
  br label %free_firmware

free_firmware:                                    ; preds = %powergate, %if.end368.free_firmware_crit_edge
  %err.6 = phi i32 [ %call369, %if.end368.free_firmware_crit_edge ], [ %err.5, %powergate ]
  %fw = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 35
  %240 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %fw, align 4
  %virt = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 35, i32 1
  %242 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %virt, align 4
  %phys490 = getelementptr inbounds %struct.tegra_xusb, ptr %call.i, i32 0, i32 35, i32 2
  %244 = ptrtoint ptr %phys490 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %phys490, align 4
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef %241, ptr noundef %243, i32 noundef %245, i32 noundef 0) #10
  br label %disable_phy

disable_phy:                                      ; preds = %free_firmware, %do.end366, %do.end358
  %err.7 = phi i32 [ %call353, %do.end358 ], [ %call361, %do.end366 ], [ %err.6, %free_firmware ]
  call fastcc void @tegra_xusb_phy_disable(ptr noundef nonnull %call.i)
  br label %disable_regulator

disable_regulator:                                ; preds = %disable_phy, %do.end349
  %err.8 = phi i32 [ %call344, %do.end349 ], [ %err.7, %disable_phy ]
  %246 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %soc, align 4
  %num_supplies492 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %247, i32 0, i32 2
  %248 = ptrtoint ptr %num_supplies492 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %num_supplies492, align 4
  %250 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %supplies, align 4
  %call494 = call i32 @regulator_bulk_disable(i32 noundef %249, ptr noundef %251) #10
  br label %disable_clk

disable_clk:                                      ; preds = %disable_regulator, %do.end341
  %err.9 = phi i32 [ %call336, %do.end341 ], [ %err.8, %disable_regulator ]
  call fastcc void @tegra_xusb_clk_disable(ptr noundef nonnull %call.i)
  br label %put_hcd

put_hcd:                                          ; preds = %disable_clk, %do.end330
  %err.10 = phi i32 [ %call325, %do.end330 ], [ %err.9, %disable_clk ]
  %252 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %hcd, align 4
  call void @usb_put_hcd(ptr noundef %253) #10
  br label %put_powerdomains

put_powerdomains:                                 ; preds = %put_hcd, %dev_name.exit.put_powerdomains_crit_edge, %cleanup, %devm_kcalloc.exit788.put_powerdomains_crit_edge, %devm_kcalloc.exit788.thread, %do.end247, %devm_kcalloc.exit.put_powerdomains_crit_edge, %devm_kcalloc.exit.thread, %if.else220.put_powerdomains_crit_edge
  %err.11 = phi i32 [ %call222, %if.else220.put_powerdomains_crit_edge ], [ %call242, %do.end247 ], [ %138, %cleanup ], [ %err.10, %put_hcd ], [ -12, %devm_kcalloc.exit.put_powerdomains_crit_edge ], [ -12, %devm_kcalloc.exit788.put_powerdomains_crit_edge ], [ -12, %dev_name.exit.put_powerdomains_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit788.thread ]
  call fastcc void @tegra_xusb_powerdomain_remove(ptr noundef nonnull %call.i)
  br label %put_padctl

put_padctl:                                       ; preds = %put_powerdomains, %if.then212, %if.then200, %if.then184, %if.then172, %if.then160, %if.then148, %if.then136, %if.then124, %if.then112, %if.then100, %if.then88, %if.then68, %if.end56.put_padctl_crit_edge
  %err.12 = phi i32 [ %42, %if.then88 ], [ %44, %if.then100 ], [ %46, %if.then112 ], [ %48, %if.then124 ], [ %50, %if.then136 ], [ %52, %if.then148 ], [ %54, %if.then160 ], [ %56, %if.then172 ], [ %58, %if.then184 ], [ %err.11, %put_powerdomains ], [ %62, %if.then200 ], [ %64, %if.then212 ], [ %spec.select, %if.then68 ], [ -19, %if.end56.put_padctl_crit_edge ]
  call void @of_node_put(ptr noundef %call58) #10
  %254 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %padctl, align 4
  call void @tegra_xusb_padctl_put(ptr noundef %255) #10
  br label %cleanup498

cleanup498:                                       ; preds = %put_padctl, %if.then478, %if.end461.cleanup498_crit_edge, %if.then53, %if.end42.cleanup498_crit_edge, %if.end36.cleanup498_crit_edge, %if.then32, %if.then22, %if.then15, %devm_kcalloc.exit26.i.cleanup498_crit_edge, %devm_kcalloc.exit26.i.thread, %devm_kcalloc.exit.i.cleanup498_crit_edge, %devm_kcalloc.exit.thread.i, %entry.cleanup498_crit_edge
  %retval.0 = phi i32 [ %25, %if.then15 ], [ %27, %if.then22 ], [ %33, %if.then32 ], [ %37, %if.then53 ], [ %err.12, %put_padctl ], [ -12, %entry.cleanup498_crit_edge ], [ %call37, %if.end36.cleanup498_crit_edge ], [ %call43, %if.end42.cleanup498_crit_edge ], [ 0, %if.then478 ], [ 0, %if.end461.cleanup498_crit_edge ], [ -12, %devm_kcalloc.exit.i.cleanup498_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit26.i.thread ], [ -12, %devm_kcalloc.exit26.i.cleanup498_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regs) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xusb_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hcd = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %5, %if.else.i ], [ %3, %entry.hcd_to_xhci.exit_crit_edge ]
  %id_work.i = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 34
  %call.i37 = tail call zeroext i1 @cancel_work_sync(ptr noundef %id_work.i) #10
  %num_usb_phys.i = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 29
  %6 = ptrtoint ptr %num_usb_phys.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_usb_phys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10.not.i = icmp eq i32 %7, 0
  br i1 %cmp10.not.i, label %hcd_to_xhci.exit.tegra_xusb_deinit_usb_phy.exit_crit_edge, label %for.body.lr.ph.i

hcd_to_xhci.exit.tegra_xusb_deinit_usb_phy.exit_crit_edge: ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_xusb_deinit_usb_phy.exit

for.body.lr.ph.i:                                 ; preds = %hcd_to_xhci.exit
  %usbphy.i = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 28
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %usbphy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usbphy.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %i.011.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i38 = icmp eq ptr %11, null
  br i1 %tobool.not.i38, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %otg.i = getelementptr inbounds %struct.usb_phy, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %otg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %otg.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.then.i.for.inc.i_crit_edge, label %land.lhs.true.i.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %set_host.i.i = getelementptr inbounds %struct.usb_otg, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %set_host.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_host.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.for.inc.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 %15(ptr noundef nonnull %13, ptr noundef null) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i, %land.lhs.true.i.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.011.i, 1
  %16 = ptrtoint ptr %num_usb_phys.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_usb_phys.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.tegra_xusb_deinit_usb_phy.exit_crit_edge

for.inc.i.tegra_xusb_deinit_usb_phy.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_xusb_deinit_usb_phy.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

tegra_xusb_deinit_usb_phy.exit:                   ; preds = %for.inc.i.tegra_xusb_deinit_usb_phy.exit_crit_edge, %hcd_to_xhci.exit.tegra_xusb_deinit_usb_phy.exit_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i39 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shared_hcd, align 4
  tail call void @usb_remove_hcd(ptr noundef %19) #10
  %20 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shared_hcd, align 4
  tail call void @usb_put_hcd(ptr noundef %21) #10
  %22 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %shared_hcd, align 4
  %23 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hcd, align 4
  tail call void @usb_remove_hcd(ptr noundef %24) #10
  %25 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hcd, align 4
  tail call void @usb_put_hcd(ptr noundef %26) #10
  %fw = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 35
  %27 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fw, align 4
  %virt = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 35, i32 1
  %29 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %virt, align 4
  %phys = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 35, i32 2
  %31 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %28, ptr noundef %30, i32 noundef %32, i32 noundef 0) #10
  %padctl_irq = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %padctl_irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %padctl_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not = icmp eq i32 %34, 0
  br i1 %tobool.not, label %tegra_xusb_deinit_usb_phy.exit.if.end_crit_edge, label %if.then

tegra_xusb_deinit_usb_phy.exit.if.end_crit_edge:  ; preds = %tegra_xusb_deinit_usb_phy.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %tegra_xusb_deinit_usb_phy.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %tegra_xusb_deinit_usb_phy.exit.if.end_crit_edge
  %call.i40 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #10
  tail call fastcc void @tegra_xusb_powergate_partitions(ptr noundef %1)
  %use_genpd.i = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 25
  %35 = ptrtoint ptr %use_genpd.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %use_genpd.i, align 4, !range !449
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i41 = icmp eq i8 %36, 0
  br i1 %tobool.not.i41, label %if.end.tegra_xusb_powerdomain_remove.exit_crit_edge, label %if.end.i

if.end.tegra_xusb_powerdomain_remove.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_xusb_powerdomain_remove.exit

if.end.i:                                         ; preds = %if.end
  %genpd_dev_ss.i = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 24
  %37 = ptrtoint ptr %genpd_dev_ss.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %genpd_dev_ss.i, align 4
  %tobool.not.i.i42 = icmp eq ptr %38, null
  %cmp.i.i = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i42, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end.i.if.end3.i_crit_edge, label %if.then1.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dev_pm_domain_detach(ptr noundef nonnull %38, i1 noundef zeroext true) #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.end.i.if.end3.i_crit_edge
  %genpd_dev_host.i = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 23
  %39 = ptrtoint ptr %genpd_dev_host.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %genpd_dev_host.i, align 4
  %tobool.not.i1.i = icmp eq ptr %40, null
  %cmp.i2.i = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  %spec.select.i3.i = or i1 %tobool.not.i1.i, %cmp.i2.i
  br i1 %spec.select.i3.i, label %if.end3.i.tegra_xusb_powerdomain_remove.exit_crit_edge, label %if.then5.i

if.end3.i.tegra_xusb_powerdomain_remove.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_xusb_powerdomain_remove.exit

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dev_pm_domain_detach(ptr noundef nonnull %40, i1 noundef zeroext true) #10
  br label %tegra_xusb_powerdomain_remove.exit

tegra_xusb_powerdomain_remove.exit:               ; preds = %if.then5.i, %if.end3.i.tegra_xusb_powerdomain_remove.exit_crit_edge, %if.end.tegra_xusb_powerdomain_remove.exit_crit_edge
  %num_phys.i = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 27
  %41 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_phys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp9.not.i = icmp eq i32 %42, 0
  br i1 %cmp9.not.i, label %tegra_xusb_powerdomain_remove.exit.tegra_xusb_phy_disable.exit_crit_edge, label %for.body.lr.ph.i43

tegra_xusb_powerdomain_remove.exit.tegra_xusb_phy_disable.exit_crit_edge: ; preds = %tegra_xusb_powerdomain_remove.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_xusb_phy_disable.exit

for.body.lr.ph.i43:                               ; preds = %tegra_xusb_powerdomain_remove.exit
  %phys.i = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 26
  br label %for.body.i48

for.body.i48:                                     ; preds = %for.body.i48.for.body.i48_crit_edge, %for.body.lr.ph.i43
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i43 ], [ %inc.i46, %for.body.i48.for.body.i48_crit_edge ]
  %43 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phys.i, align 4
  %arrayidx.i44 = getelementptr ptr, ptr %44, i32 %i.010.i
  %45 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i44, align 4
  %call.i45 = tail call i32 @phy_power_off(ptr noundef %46) #10
  %47 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %phys.i, align 4
  %arrayidx2.i = getelementptr ptr, ptr %48, i32 %i.010.i
  %49 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx2.i, align 4
  %call3.i = tail call i32 @phy_exit(ptr noundef %50) #10
  %inc.i46 = add nuw i32 %i.010.i, 1
  %51 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_phys.i, align 4
  %cmp.i47 = icmp ult i32 %inc.i46, %52
  br i1 %cmp.i47, label %for.body.i48.for.body.i48_crit_edge, label %for.body.i48.tegra_xusb_phy_disable.exit_crit_edge

for.body.i48.tegra_xusb_phy_disable.exit_crit_edge: ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_xusb_phy_disable.exit

for.body.i48.for.body.i48_crit_edge:              ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i48

tegra_xusb_phy_disable.exit:                      ; preds = %for.body.i48.tegra_xusb_phy_disable.exit_crit_edge, %tegra_xusb_powerdomain_remove.exit.tegra_xusb_phy_disable.exit_crit_edge
  tail call fastcc void @tegra_xusb_clk_disable(ptr noundef %1)
  %soc = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 9
  %53 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %soc, align 4
  %num_supplies = getelementptr inbounds %struct.tegra_xusb_soc, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_supplies, align 4
  %supplies = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 10
  %57 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %supplies, align 4
  %call15 = tail call i32 @regulator_bulk_disable(i32 noundef %56, ptr noundef %58) #10
  %padctl = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 11
  %59 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %padctl, align 4
  tail call void @tegra_xusb_padctl_put(ptr noundef %60) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_xusb_padctl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @of_parse_phandle(ptr noundef %np) unnamed_addr #5 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #10
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_powerdomain_init(ptr noundef %dev, ptr nocapture noundef %tegra) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  %genpd_dev_host = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 23
  %0 = ptrtoint ptr %genpd_dev_host to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %genpd_dev_host, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.97, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  %genpd_dev_ss = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 24
  %2 = ptrtoint ptr %genpd_dev_ss to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %genpd_dev_ss, align 4
  %cmp.i27 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i27, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %call5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.100, i32 noundef %3) #13
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %use_genpd = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 25
  %4 = ptrtoint ptr %use_genpd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %use_genpd, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then8, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %3, %if.then8 ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_bulk_set_supply_names(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_clk_enable(ptr nocapture noundef readonly %tegra) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pll_e = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 20
  %0 = ptrtoint ptr %pll_e to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll_e, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %1) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %host_clk = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 12
  %2 = ptrtoint ptr %host_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_clk, align 4
  %call.i54 = tail call i32 @clk_prepare(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool.not.i55 = icmp eq i32 %call.i54, 0
  br i1 %tobool.not.i55, label %if.end.i58, label %if.end.clk_prepare_enable.exit61_crit_edge

if.end.clk_prepare_enable.exit61_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit61

if.end.i58:                                       ; preds = %if.end
  %call1.i56 = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56)
  %tobool2.not.i57 = icmp eq i32 %call1.i56, 0
  br i1 %tobool2.not.i57, label %if.end.i58.if.end4_crit_edge, label %if.then3.i59

if.end.i58.if.end4_crit_edge:                     ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3.i59:                                     ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %3) #10
  br label %clk_prepare_enable.exit61

clk_prepare_enable.exit61:                        ; preds = %if.then3.i59, %if.end.clk_prepare_enable.exit61_crit_edge
  %retval.0.i60 = phi i32 [ %call.i54, %if.end.clk_prepare_enable.exit61_crit_edge ], [ %call1.i56, %if.then3.i59 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i60)
  %cmp2 = icmp slt i32 %retval.0.i60, 0
  br i1 %cmp2, label %clk_prepare_enable.exit61.disable_plle_crit_edge, label %clk_prepare_enable.exit61.if.end4_crit_edge

clk_prepare_enable.exit61.if.end4_crit_edge:      ; preds = %clk_prepare_enable.exit61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

clk_prepare_enable.exit61.disable_plle_crit_edge: ; preds = %clk_prepare_enable.exit61
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_plle

if.end4:                                          ; preds = %clk_prepare_enable.exit61.if.end4_crit_edge, %if.end.i58.if.end4_crit_edge
  %ss_clk = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 14
  %4 = ptrtoint ptr %ss_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ss_clk, align 4
  %call.i62 = tail call i32 @clk_prepare(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i63 = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i63, label %if.end.i66, label %if.end4.clk_prepare_enable.exit69_crit_edge

if.end4.clk_prepare_enable.exit69_crit_edge:      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit69

if.end.i66:                                       ; preds = %if.end4
  %call1.i64 = tail call i32 @clk_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64)
  %tobool2.not.i65 = icmp eq i32 %call1.i64, 0
  br i1 %tobool2.not.i65, label %if.end.i66.if.end8_crit_edge, label %if.then3.i67

if.end.i66.if.end8_crit_edge:                     ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3.i67:                                     ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %clk_prepare_enable.exit69

clk_prepare_enable.exit69:                        ; preds = %if.then3.i67, %if.end4.clk_prepare_enable.exit69_crit_edge
  %retval.0.i68 = phi i32 [ %call.i62, %if.end4.clk_prepare_enable.exit69_crit_edge ], [ %call1.i64, %if.then3.i67 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i68)
  %cmp6 = icmp slt i32 %retval.0.i68, 0
  br i1 %cmp6, label %clk_prepare_enable.exit69.disable_host_crit_edge, label %clk_prepare_enable.exit69.if.end8_crit_edge

clk_prepare_enable.exit69.if.end8_crit_edge:      ; preds = %clk_prepare_enable.exit69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

clk_prepare_enable.exit69.disable_host_crit_edge: ; preds = %clk_prepare_enable.exit69
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_host

if.end8:                                          ; preds = %clk_prepare_enable.exit69.if.end8_crit_edge, %if.end.i66.if.end8_crit_edge
  %falcon_clk = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 13
  %6 = ptrtoint ptr %falcon_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %falcon_clk, align 4
  %call.i70 = tail call i32 @clk_prepare(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool.not.i71 = icmp eq i32 %call.i70, 0
  br i1 %tobool.not.i71, label %if.end.i74, label %if.end8.clk_prepare_enable.exit77_crit_edge

if.end8.clk_prepare_enable.exit77_crit_edge:      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit77

if.end.i74:                                       ; preds = %if.end8
  %call1.i72 = tail call i32 @clk_enable(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i72)
  %tobool2.not.i73 = icmp eq i32 %call1.i72, 0
  br i1 %tobool2.not.i73, label %if.end.i74.if.end12_crit_edge, label %if.then3.i75

if.end.i74.if.end12_crit_edge:                    ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then3.i75:                                     ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %7) #10
  br label %clk_prepare_enable.exit77

clk_prepare_enable.exit77:                        ; preds = %if.then3.i75, %if.end8.clk_prepare_enable.exit77_crit_edge
  %retval.0.i76 = phi i32 [ %call.i70, %if.end8.clk_prepare_enable.exit77_crit_edge ], [ %call1.i72, %if.then3.i75 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i76)
  %cmp10 = icmp slt i32 %retval.0.i76, 0
  br i1 %cmp10, label %clk_prepare_enable.exit77.disable_ss_crit_edge, label %clk_prepare_enable.exit77.if.end12_crit_edge

clk_prepare_enable.exit77.if.end12_crit_edge:     ; preds = %clk_prepare_enable.exit77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

clk_prepare_enable.exit77.disable_ss_crit_edge:   ; preds = %clk_prepare_enable.exit77
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_ss

if.end12:                                         ; preds = %clk_prepare_enable.exit77.if.end12_crit_edge, %if.end.i74.if.end12_crit_edge
  %fs_src_clk = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 17
  %8 = ptrtoint ptr %fs_src_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs_src_clk, align 4
  %call.i78 = tail call i32 @clk_prepare(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool.not.i79 = icmp eq i32 %call.i78, 0
  br i1 %tobool.not.i79, label %if.end.i82, label %if.end12.clk_prepare_enable.exit85_crit_edge

if.end12.clk_prepare_enable.exit85_crit_edge:     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit85

if.end.i82:                                       ; preds = %if.end12
  %call1.i80 = tail call i32 @clk_enable(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i80)
  %tobool2.not.i81 = icmp eq i32 %call1.i80, 0
  br i1 %tobool2.not.i81, label %if.end.i82.if.end16_crit_edge, label %if.then3.i83

if.end.i82.if.end16_crit_edge:                    ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then3.i83:                                     ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %9) #10
  br label %clk_prepare_enable.exit85

clk_prepare_enable.exit85:                        ; preds = %if.then3.i83, %if.end12.clk_prepare_enable.exit85_crit_edge
  %retval.0.i84 = phi i32 [ %call.i78, %if.end12.clk_prepare_enable.exit85_crit_edge ], [ %call1.i80, %if.then3.i83 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i84)
  %cmp14 = icmp slt i32 %retval.0.i84, 0
  br i1 %cmp14, label %clk_prepare_enable.exit85.disable_falc_crit_edge, label %clk_prepare_enable.exit85.if.end16_crit_edge

clk_prepare_enable.exit85.if.end16_crit_edge:     ; preds = %clk_prepare_enable.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

clk_prepare_enable.exit85.disable_falc_crit_edge: ; preds = %clk_prepare_enable.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_falc

if.end16:                                         ; preds = %clk_prepare_enable.exit85.if.end16_crit_edge, %if.end.i82.if.end16_crit_edge
  %hs_src_clk = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 16
  %10 = ptrtoint ptr %hs_src_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hs_src_clk, align 4
  %call.i86 = tail call i32 @clk_prepare(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool.not.i87 = icmp eq i32 %call.i86, 0
  br i1 %tobool.not.i87, label %if.end.i90, label %if.end16.clk_prepare_enable.exit93_crit_edge

if.end16.clk_prepare_enable.exit93_crit_edge:     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit93

if.end.i90:                                       ; preds = %if.end16
  %call1.i88 = tail call i32 @clk_enable(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %tobool2.not.i89 = icmp eq i32 %call1.i88, 0
  br i1 %tobool2.not.i89, label %if.end.i90.if.end20_crit_edge, label %if.then3.i91

if.end.i90.if.end20_crit_edge:                    ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then3.i91:                                     ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %11) #10
  br label %clk_prepare_enable.exit93

clk_prepare_enable.exit93:                        ; preds = %if.then3.i91, %if.end16.clk_prepare_enable.exit93_crit_edge
  %retval.0.i92 = phi i32 [ %call.i86, %if.end16.clk_prepare_enable.exit93_crit_edge ], [ %call1.i88, %if.then3.i91 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i92)
  %cmp18 = icmp slt i32 %retval.0.i92, 0
  br i1 %cmp18, label %clk_prepare_enable.exit93.disable_fs_src_crit_edge, label %clk_prepare_enable.exit93.if.end20_crit_edge

clk_prepare_enable.exit93.if.end20_crit_edge:     ; preds = %clk_prepare_enable.exit93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

clk_prepare_enable.exit93.disable_fs_src_crit_edge: ; preds = %clk_prepare_enable.exit93
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_fs_src

if.end20:                                         ; preds = %clk_prepare_enable.exit93.if.end20_crit_edge, %if.end.i90.if.end20_crit_edge
  %soc = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 9
  %12 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %soc, align 4
  %scale_ss_clock = getelementptr inbounds %struct.tegra_xusb_soc, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %scale_ss_clock to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %scale_ss_clock, align 4, !range !449
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end20.cleanup_crit_edge, label %if.then21

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %if.end20
  %call22 = tail call fastcc i32 @tegra_xusb_set_ss_clk(ptr noundef %tegra, i32 noundef 120000000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %disable_hs_src, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

disable_hs_src:                                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %hs_src_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hs_src_clk, align 4
  tail call void @clk_disable(ptr noundef %17) #10
  tail call void @clk_unprepare(ptr noundef %17) #10
  br label %disable_fs_src

disable_fs_src:                                   ; preds = %disable_hs_src, %clk_prepare_enable.exit93.disable_fs_src_crit_edge
  %err.0 = phi i32 [ %retval.0.i92, %clk_prepare_enable.exit93.disable_fs_src_crit_edge ], [ %call22, %disable_hs_src ]
  %18 = ptrtoint ptr %fs_src_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fs_src_clk, align 4
  tail call void @clk_disable(ptr noundef %19) #10
  tail call void @clk_unprepare(ptr noundef %19) #10
  br label %disable_falc

disable_falc:                                     ; preds = %disable_fs_src, %clk_prepare_enable.exit85.disable_falc_crit_edge
  %err.1 = phi i32 [ %retval.0.i84, %clk_prepare_enable.exit85.disable_falc_crit_edge ], [ %err.0, %disable_fs_src ]
  %20 = ptrtoint ptr %falcon_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %falcon_clk, align 4
  tail call void @clk_disable(ptr noundef %21) #10
  tail call void @clk_unprepare(ptr noundef %21) #10
  br label %disable_ss

disable_ss:                                       ; preds = %disable_falc, %clk_prepare_enable.exit77.disable_ss_crit_edge
  %err.2 = phi i32 [ %retval.0.i76, %clk_prepare_enable.exit77.disable_ss_crit_edge ], [ %err.1, %disable_falc ]
  %22 = ptrtoint ptr %ss_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ss_clk, align 4
  tail call void @clk_disable(ptr noundef %23) #10
  tail call void @clk_unprepare(ptr noundef %23) #10
  br label %disable_host

disable_host:                                     ; preds = %disable_ss, %clk_prepare_enable.exit69.disable_host_crit_edge
  %err.3 = phi i32 [ %retval.0.i68, %clk_prepare_enable.exit69.disable_host_crit_edge ], [ %err.2, %disable_ss ]
  %24 = ptrtoint ptr %host_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host_clk, align 4
  tail call void @clk_disable(ptr noundef %25) #10
  tail call void @clk_unprepare(ptr noundef %25) #10
  br label %disable_plle

disable_plle:                                     ; preds = %disable_host, %clk_prepare_enable.exit61.disable_plle_crit_edge
  %err.4 = phi i32 [ %retval.0.i60, %clk_prepare_enable.exit61.disable_plle_crit_edge ], [ %err.3, %disable_host ]
  %26 = ptrtoint ptr %pll_e to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pll_e, align 4
  tail call void @clk_disable(ptr noundef %27) #10
  tail call void @clk_unprepare(ptr noundef %27) #10
  br label %cleanup

cleanup:                                          ; preds = %disable_plle, %if.then21.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %disable_plle ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.then21.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_phy_enable(ptr nocapture noundef readonly %tegra) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_phys = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 27
  %0 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp39.not = icmp eq i32 %1, 0
  br i1 %cmp39.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %phys = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phys, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.040
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @phy_init(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.disable_phy_crit_edge

for.body.disable_phy_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_phy

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phys, align 4
  %arrayidx2 = getelementptr ptr, ptr %7, i32 %i.040
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %call3 = tail call i32 @phy_power_on(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.inc, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phys, align 4
  %arrayidx7 = getelementptr ptr, ptr %11, i32 %i.040
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx7, align 4
  %call8 = tail call i32 @phy_exit(ptr noundef %13) #10
  br label %disable_phy

for.inc:                                          ; preds = %if.end
  %inc = add nuw i32 %i.040, 1
  %14 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_phys, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

disable_phy:                                      ; preds = %if.then5, %for.body.disable_phy_crit_edge
  %err.0 = phi i32 [ %call3, %if.then5 ], [ %call, %for.body.disable_phy_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.040)
  %tobool10.not41 = icmp eq i32 %i.040, 0
  br i1 %tobool10.not41, label %disable_phy.cleanup_crit_edge, label %disable_phy.while.body_crit_edge

disable_phy.while.body_crit_edge:                 ; preds = %disable_phy
  br label %while.body

disable_phy.cleanup_crit_edge:                    ; preds = %disable_phy
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %disable_phy.while.body_crit_edge
  %i.142 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.040, %disable_phy.while.body_crit_edge ]
  %dec = add i32 %i.142, -1
  %16 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phys, align 4
  %arrayidx12 = getelementptr ptr, ptr %17, i32 %dec
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx12, align 4
  %call13 = tail call i32 @phy_power_off(ptr noundef %19) #10
  %20 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phys, align 4
  %arrayidx15 = getelementptr ptr, ptr %21, i32 %dec
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx15, align 4
  %call16 = tail call i32 @phy_exit(ptr noundef %23) #10
  %tobool10.not = icmp eq i32 %dec, 0
  br i1 %tobool10.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %disable_phy.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %disable_phy.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %err.0, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 1099511627775) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 1099511627775) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_request_firmware(ptr noundef %tegra) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #10
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !450
  %soc = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 9
  %1 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %soc, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tegra, align 4
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %4, ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tegra, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.71, i32 noundef %call) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %fwimg_len = getelementptr inbounds %struct.tegra_xusb_fw_header, ptr %12, i32 0, i32 26
  %13 = ptrtoint ptr %fwimg_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fwimg_len, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %fw2 = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 35
  %16 = ptrtoint ptr %fw2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %fw2, align 4
  %17 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tegra, align 4
  %phys = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 35, i32 2
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %18, i32 noundef %15, ptr noundef %phys, i32 noundef 3264, i32 noundef 0) #10
  %virt = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 35, i32 1
  %19 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %virt, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tegra, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.109) #13
  %22 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %23) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw, align 4
  %data21 = getelementptr inbounds %struct.firmware, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %data21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data21, align 4
  %28 = ptrtoint ptr %fw2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fw2, align 4
  %30 = call ptr @memcpy(ptr %call.i, ptr %27, i32 %29)
  %31 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %31) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end14, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end16 ], [ -12, %do.end14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_unpowergate_partitions(ptr nocapture noundef readonly %tegra) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tegra, align 4
  %use_genpd = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 25
  %2 = ptrtoint ptr %use_genpd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_genpd, align 4, !range !449
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %genpd_dev_ss = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 24
  %4 = ptrtoint ptr %genpd_dev_ss to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %genpd_dev_ss, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.111) #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %genpd_dev_host = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 23
  %6 = ptrtoint ptr %genpd_dev_host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %genpd_dev_host, align 4
  %call.i47 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp4 = icmp slt i32 %call.i47, 0
  br i1 %cmp4, label %do.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.114) #13
  %8 = ptrtoint ptr %genpd_dev_ss to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %genpd_dev_ss, align 4
  %call.i48 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %ss_clk = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 14
  %10 = ptrtoint ptr %ss_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ss_clk, align 4
  %ss_rst = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 22
  %12 = ptrtoint ptr %ss_rst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ss_rst, align 4
  %call12 = tail call i32 @tegra_powergate_sequence_power_up(i32 noundef 20, ptr noundef %11, ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end18

do.end17:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.111) #13
  br label %cleanup

if.end18:                                         ; preds = %if.else
  %host_clk = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 12
  %14 = ptrtoint ptr %host_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host_clk, align 4
  %host_rst = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 21
  %16 = ptrtoint ptr %host_rst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host_rst, align 4
  %call19 = tail call i32 @tegra_powergate_sequence_power_up(i32 noundef 22, ptr noundef %15, ptr noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.114) #13
  %call25 = tail call i32 @tegra_powergate_power_off(i32 noundef 20) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.end18.cleanup_crit_edge, %do.end17, %do.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i47, %do.end8 ], [ %call12, %do.end17 ], [ %call19, %do.end24 ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xusb_config(ptr nocapture noundef readonly %tegra) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 2
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rsrc_start, align 8
  %soc = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 9
  %4 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc, align 4
  %has_ipfs = getelementptr inbounds %struct.tegra_xusb_soc, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %has_ipfs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_ipfs, align 1, !range !449
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ipfs_base.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 7
  %8 = ptrtoint ptr %ipfs_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipfs_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 384
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !454
  %11 = or i32 %10, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !455
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %ipfs_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ipfs_base.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %13, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %11) #10, !srcloc !456
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fpci_base.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 8
  %14 = ptrtoint ptr %fpci_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fpci_base.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %15, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #10, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  %17 = and i32 %16, -8454144
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %and2 = and i32 %3, -32768
  %or3 = or i32 %18, %and2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %or3) #10
  %20 = ptrtoint ptr %fpci_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fpci_base.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %19) #10, !srcloc !456
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #10
  %22 = ptrtoint ptr %fpci_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fpci_base.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #10, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  %25 = or i32 %24, 117440512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %fpci_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fpci_base.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %25) #10, !srcloc !456
  %28 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %soc, align 4
  %has_ipfs7 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %has_ipfs7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %has_ipfs7, align 1, !range !449
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool8.not = icmp eq i8 %31, 0
  br i1 %tobool8.not, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ipfs_base.i41 = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 7
  %32 = ptrtoint ptr %ipfs_base.i41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ipfs_base.i41, align 4
  %add.ptr.i42 = getelementptr i8, ptr %33, i32 392
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #10, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !454
  %35 = or i32 %34, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !455
  tail call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %ipfs_base.i41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ipfs_base.i41, align 4
  %add.ptr.i44 = getelementptr i8, ptr %37, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %35) #10, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !455
  tail call void @arm_heavy_mb() #10
  %38 = ptrtoint ptr %ipfs_base.i41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ipfs_base.i41, align 4
  %add.ptr.i46 = getelementptr i8, ptr %39, i32 444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 -2147483648) #10, !srcloc !456
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_load_firmware(ptr noundef readonly %tegra) unnamed_addr #2 align 64 {
entry:
  %timestamp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tegra, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %timestamp) #10
  %4 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %timestamp, align 8, !annotation !450
  %virt = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 35, i32 1
  %5 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %virt, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !453
  %8 = lshr i32 %7, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !459
  %add.ptr = getelementptr i8, ptr %1, i32 %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %fpci_base.i.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 8
  %9 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 218628096) #10, !srcloc !456
  %11 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %12, i32 2052
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #10, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i.i163 = getelementptr i8, ptr %15, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i163, i32 0) #10, !srcloc !456
  %16 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i5.i164 = getelementptr i8, ptr %17, i32 2304
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i164) #10, !srcloc !453
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.120, i32 noundef %19) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 35
  %20 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i.i166 = getelementptr i8, ptr %23, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i166, i32 218628096) #10, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %24 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  %25 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i5.i167 = getelementptr i8, ptr %26, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i167, i32 %24) #10, !srcloc !456
  %phys = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 35, i32 2
  %27 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %phys, align 4
  %add = add i32 %28, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i.i169 = getelementptr i8, ptr %30, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i169, i32 218628096) #10, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i5.i170 = getelementptr i8, ptr %32, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i170, i32 0) #10, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i.i172 = getelementptr i8, ptr %34, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i172, i32 218628096) #10, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %35 = tail call i32 @llvm.bswap.i32(i32 %add) #10
  %36 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i5.i173 = getelementptr i8, ptr %37, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i173, i32 %35) #10, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %38 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i.i175 = getelementptr i8, ptr %39, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i175, i32 201850880) #10, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i5.i176 = getelementptr i8, ptr %41, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i176, i32 128) #10, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %42 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i.i178 = getelementptr i8, ptr %43, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i178, i32 218628096) #10, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i5.i179 = getelementptr i8, ptr %45, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i179, i32 64) #10, !srcloc !456
  %boot_codetag = getelementptr inbounds %struct.tegra_xusb_fw_header, ptr %6, i32 0, i32 2
  %46 = ptrtoint ptr %boot_codetag to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %boot_codetag, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %sub = add i32 %48, 255
  %div160 = lshr i32 %sub, 8
  %boot_codesize = getelementptr inbounds %struct.tegra_xusb_fw_header, ptr %6, i32 0, i32 3
  %49 = ptrtoint ptr %boot_codesize to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %boot_codesize, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %sub13 = add i32 %51, 255
  %div14161 = lshr i32 %sub13, 8
  %add15 = add nuw nsw i32 %div14161, %div160
  %shl = and i32 %sub, 261888
  %shl18 = shl i32 %div14161, 24
  %or = or i32 %shl18, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %52 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i.i181 = getelementptr i8, ptr %53, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i181, i32 218628096) #10, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %54 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %55 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i5.i182 = getelementptr i8, ptr %56, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i182, i32 %54) #10, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %57 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i.i184 = getelementptr i8, ptr %58, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i184, i32 218628096) #10, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %59 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i5.i185 = getelementptr i8, ptr %60, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i185, i32 17) #10, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %61 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i.i187 = getelementptr i8, ptr %62, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i187, i32 0) #10, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %63 = tail call i32 @llvm.bswap.i32(i32 %div14161) #10
  %64 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i5.i188 = getelementptr i8, ptr %65, i32 2392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i188, i32 %63) #10, !srcloc !456
  %and19 = and i32 %div160, 65535
  %shl22 = shl i32 %add15, 16
  %or23 = or i32 %shl22, %and19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %66 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i.i190 = getelementptr i8, ptr %67, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i190, i32 0) #10, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %68 = tail call i32 @llvm.bswap.i32(i32 %or23) #10
  %69 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i5.i191 = getelementptr i8, ptr %70, i32 2388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i191, i32 %68) #10, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %71 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i.i193 = getelementptr i8, ptr %72, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i193, i32 0) #10, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %73 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i5.i194 = getelementptr i8, ptr %74, i32 2316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i194, i32 0) #10, !srcloc !456
  %call24 = tail call i64 @ktime_get() #10
  %add.i = add i64 %call24, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 958) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %75 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i.i196212 = getelementptr i8, ptr %76, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i196212, i32 218628096) #10, !srcloc !456
  %77 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i5.i197213 = getelementptr i8, ptr %78, i32 2072
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i197213) #10, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  %.mask214 = and i32 %79, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask214)
  %tobool.not215 = icmp eq i32 %.mask214, 0
  br i1 %tobool.not215, label %if.end.land.lhs.true_crit_edge, label %if.end.if.end65_crit_edge

if.end.if.end65_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then52.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call44 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call44, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call44, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then52

if.then52:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %80 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i.i196 = getelementptr i8, ptr %81, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i196, i32 218628096) #10, !srcloc !456
  %82 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i5.i197 = getelementptr i8, ptr %83, i32 2072
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i197) #10, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  %.mask = and i32 %84, 128
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %if.then52.land.lhs.true_crit_edge, label %if.then52.if.end65_crit_edge

if.then52.if.end65_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then52.land.lhs.true_crit_edge:                ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %85 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i.i199 = getelementptr i8, ptr %86, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i199, i32 218628096) #10, !srcloc !456
  %87 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i5.i200 = getelementptr i8, ptr %88, i32 2072
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i200) #10, !srcloc !453
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool58.not.inv = icmp slt i32 %90, 0
  br i1 %tobool58.not.inv, label %for.end.if.end65_crit_edge, label %do.end64

for.end.if.end65_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

do.end64:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.124, i32 noundef %90) #13
  br label %cleanup

if.end65:                                         ; preds = %for.end.if.end65_crit_edge, %if.then52.if.end65_crit_edge, %if.end.if.end65_crit_edge
  %91 = ptrtoint ptr %boot_codetag to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %boot_codetag, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %93 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i.i202 = getelementptr i8, ptr %94, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i202, i32 0) #10, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %95 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i5.i203 = getelementptr i8, ptr %96, i32 2308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i203, i32 %92) #10, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %97 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i.i205 = getelementptr i8, ptr %98, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i205, i32 0) #10, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %99 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i5.i206 = getelementptr i8, ptr %100, i32 2304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i206, i32 33554432) #10, !srcloc !456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %101 = load volatile i32, ptr @jiffies, align 128
  %status = getelementptr inbounds %struct.xhci_op_regs, ptr %add.ptr, i32 0, i32 1
  %add68.neg = sub i32 -20, %101
  br label %do.body69

do.body69:                                        ; preds = %if.end79.do.body69_crit_edge, %if.end65
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status) #10, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !460
  %103 = and i32 %102, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp76 = icmp eq i32 %103, 0
  br i1 %cmp76, label %do.body69.do.end84_crit_edge, label %if.end79

do.body69.do.end84_crit_edge:                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end84

if.end79:                                         ; preds = %do.body69
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %104 = load volatile i32, ptr @jiffies, align 128
  %sub81 = add i32 %add68.neg, %104
  %cmp82 = icmp slt i32 %sub81, 0
  br i1 %cmp82, label %if.end79.do.body69_crit_edge, label %if.end79.do.end84_crit_edge

if.end79.do.end84_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end84

if.end79.do.body69_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

do.end84:                                         ; preds = %if.end79.do.end84_crit_edge, %do.body69.do.end84_crit_edge
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status) #10, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !461
  %106 = and i32 %105, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool92.not = icmp eq i32 %106, 0
  br i1 %tobool92.not, label %if.end98, label %if.then93

if.then93:                                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %107 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i.i208 = getelementptr i8, ptr %108, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i208, i32 0) #10, !srcloc !456
  %109 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i5.i209 = getelementptr i8, ptr %110, i32 2304
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i209) #10, !srcloc !453
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.127, i32 noundef %112) #13
  br label %cleanup

if.end98:                                         ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #12
  %fwimg_created_time = getelementptr inbounds %struct.tegra_xusb_fw_header, ptr %6, i32 0, i32 12
  %113 = ptrtoint ptr %fwimg_created_time to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %fwimg_created_time, align 4
  %115 = tail call i32 @llvm.bswap.i32(i32 %114)
  %conv99 = zext i32 %115 to i64
  %116 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %conv99, ptr %timestamp, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.130, ptr noundef nonnull %timestamp) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.then93, %do.end64, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -110, %do.end64 ], [ -5, %if.then93 ], [ 0, %if.end98 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %timestamp) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_shared_hcd(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xusb_mbox_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fpci_base.i = getelementptr inbounds %struct.tegra_xusb, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %fpci_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fpci_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1064
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %fpci_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fpci_base.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %4, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %2) #10, !srcloc !456
  %5 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.132) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xusb_mbox_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %rsp.i = alloca %struct.tegra_xusb_mbox_msg, align 8
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_xusb, ptr %data, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.out_crit_edge, label %pm_runtime_suspended.exit.lor.lhs.false_crit_edge

pm_runtime_suspended.exit.lor.lhs.false_crit_edge: ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

pm_runtime_suspended.exit.out_crit_edge:          ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %pm_runtime_suspended.exit.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %suspended = getelementptr inbounds %struct.tegra_xusb, ptr %data, i32 0, i32 36
  %5 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %suspended, align 4, !range !449
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %soc = getelementptr inbounds %struct.tegra_xusb, ptr %data, i32 0, i32 9
  %7 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %soc, align 4
  %data_out = getelementptr inbounds %struct.tegra_xusb_soc, ptr %8, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %data_out to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data_out, align 4
  %conv = zext i16 %10 to i32
  %fpci_base.i = getelementptr inbounds %struct.tegra_xusb, ptr %data, i32 0, i32 8
  %11 = ptrtoint ptr %fpci_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fpci_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %conv
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !453
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  %shr.i = lshr i32 %14, 24
  %and2.i = and i32 %14, 16777215
  %15 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %soc, align 4
  %mbox3 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %mbox3 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mbox3, align 4
  %conv4 = zext i16 %18 to i32
  %19 = ptrtoint ptr %fpci_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fpci_base.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %20, i32 %conv4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #10, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  %22 = and i32 %21, -33
  %23 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %soc, align 4
  %mbox7 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %mbox7 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mbox7, align 4
  %conv9 = zext i16 %26 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %fpci_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fpci_base.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %28, i32 %conv9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %22) #10, !srcloc !456
  %trunc = trunc i32 %shr.i to i8
  %29 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.end.if.end16_crit_edge [
    i8 6, label %if.end.if.then12_crit_edge
    i8 -128, label %if.end.if.then12_crit_edge75
    i8 -127, label %if.end.if.then12_crit_edge76
  ]

if.end.if.then12_crit_edge76:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.end.if.then12_crit_edge75:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then12:                                        ; preds = %if.end.if.then12_crit_edge, %if.end.if.then12_crit_edge75, %if.end.if.then12_crit_edge76
  %30 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %soc, align 4
  %owner = getelementptr inbounds %struct.tegra_xusb_soc, ptr %31, i32 0, i32 7, i32 3
  %32 = ptrtoint ptr %owner to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %owner, align 2
  %conv15 = zext i16 %33 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %34 = ptrtoint ptr %fpci_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fpci_base.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %35, i32 %conv15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 0) #10, !srcloc !456
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end.if.end16_crit_edge
  %padctl1.i = getelementptr inbounds %struct.tegra_xusb, ptr %data, i32 0, i32 11
  %36 = ptrtoint ptr %padctl1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %padctl1.i, align 4
  %38 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %soc, align 4
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rsp.i) #10
  %42 = getelementptr inbounds %struct.tegra_xusb_mbox_msg, ptr %rsp.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #10
  %43 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %mask.i, align 4, !annotation !450
  %44 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %rsp.i, align 8
  %45 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.224)
  switch i8 %trunc, label %do.end124.i [
    i8 2, label %if.end16.sw.bb.i_crit_edge
    i8 3, label %if.end16.sw.bb.i_crit_edge77
    i8 4, label %if.end16.sw.bb8.i_crit_edge
    i8 5, label %if.end16.sw.bb8.i_crit_edge78
    i8 6, label %if.end16.tegra_xusb_mbox_handle.exit_crit_edge
    i8 9, label %sw.bb27.i
    i8 12, label %if.end16.sw.bb39.i_crit_edge
    i8 13, label %if.end16.sw.bb39.i_crit_edge79
    i8 17, label %if.end16.sw.bb70.i_crit_edge
    i8 18, label %if.end16.sw.bb70.i_crit_edge80
  ]

if.end16.sw.bb70.i_crit_edge80:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb70.i

if.end16.sw.bb70.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb70.i

if.end16.sw.bb39.i_crit_edge79:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb39.i

if.end16.sw.bb39.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb39.i

if.end16.tegra_xusb_mbox_handle.exit_crit_edge:   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_xusb_mbox_handle.exit

if.end16.sw.bb8.i_crit_edge78:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8.i

if.end16.sw.bb8.i_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8.i

if.end16.sw.bb.i_crit_edge77:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end16.sw.bb.i_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end16.sw.bb.i_crit_edge, %if.end16.sw.bb.i_crit_edge77
  %falcon_clk.i = getelementptr inbounds %struct.tegra_xusb, ptr %data, i32 0, i32 13
  %46 = ptrtoint ptr %falcon_clk.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %falcon_clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %47) #10
  %div.i = udiv i32 %call.i, 1000
  %48 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div.i, ptr %42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %and2.i)
  %cmp.not.i = icmp eq i32 %div.i, %and2.i
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 129, ptr %rsp.i, align 8
  br label %if.then128.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 128, ptr %rsp.i, align 8
  br label %if.then128.i

sw.bb8.i:                                         ; preds = %if.end16.sw.bb8.i_crit_edge, %if.end16.sw.bb8.i_crit_edge78
  %scale_ss_clock.i = getelementptr inbounds %struct.tegra_xusb_soc, ptr %39, i32 0, i32 8
  %51 = ptrtoint ptr %scale_ss_clock.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %scale_ss_clock.i, align 4, !range !449
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i38 = icmp eq i8 %52, 0
  br i1 %tobool.not.i38, label %if.else22.i, label %sw.epilog.i

if.else22.i:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 128, ptr %rsp.i, align 8
  %54 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and2.i, ptr %42, align 4
  br label %if.then128.i

sw.bb27.i:                                        ; preds = %if.end16
  %call29.i = tail call i32 @tegra_xusb_padctl_usb3_save_context(ptr noundef %37, i32 noundef %and2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %do.end.i, label %sw.bb27.i.if.end36.i_crit_edge

sw.bb27.i.if.end36.i_crit_edge:                   ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

do.end.i:                                         ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.134, i32 noundef %and2.i, i32 noundef %call29.i) #13
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.end.i, %sw.bb27.i.if.end36.i_crit_edge
  %storemerge194.i = phi i32 [ 129, %do.end.i ], [ 128, %sw.bb27.i.if.end36.i_crit_edge ]
  %55 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %storemerge194.i, ptr %rsp.i, align 8
  %56 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and2.i, ptr %42, align 4
  br label %if.then128.i

sw.bb39.i:                                        ; preds = %if.end16.sw.bb39.i_crit_edge, %if.end16.sw.bb39.i_crit_edge79
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %shr.i)
  %cmp41.i = icmp eq i32 %shr.i, 13
  %57 = xor i1 %cmp41.i, true
  %hsic.i = getelementptr inbounds %struct.tegra_xusb_soc, ptr %39, i32 0, i32 6, i32 2
  %58 = ptrtoint ptr %hsic.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hsic.i, align 4
  %add.i = add i32 %59, 1
  %count.i = getelementptr inbounds %struct.tegra_xusb_soc, ptr %39, i32 0, i32 6, i32 2, i32 1
  %60 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %count.i, align 4
  %shr.i.i = lshr i32 %and2.i, %add.i
  %notmask.i.i = shl nsw i32 -1, %61
  %sub.i.i = xor i32 %notmask.i.i, -1
  %and.i.i = and i32 %shr.i.i, %sub.i.i
  %62 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %and.i.i, ptr %mask.i, align 4
  %call49.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call49.i)
  %cmp50214.i = icmp ult i32 %call49.i, 32
  br i1 %cmp50214.i, label %sw.bb39.i.for.body.i_crit_edge, label %sw.bb39.i.if.end67.i_crit_edge

sw.bb39.i.if.end67.i_crit_edge:                   ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.i

sw.bb39.i.for.body.i_crit_edge:                   ; preds = %sw.bb39.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb39.i.for.body.i_crit_edge
  %port.0215.i = phi i32 [ %call57.i, %for.inc.i.for.body.i_crit_edge ], [ %call49.i, %sw.bb39.i.for.body.i_crit_edge ]
  %call52.i = call i32 @tegra_xusb_padctl_hsic_set_idle(ptr noundef %37, i32 noundef %port.0215.i, i1 noundef zeroext %57) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %cmp53.i = icmp slt i32 %call52.i, 0
  br i1 %cmp53.i, label %do.end62.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %add56.i = add nuw nsw i32 %port.0215.i, 1
  %call57.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef %add56.i) #10
  %cmp50.i = icmp ult i32 %call57.i, 32
  br i1 %cmp50.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end67.i_crit_edge

for.inc.i.if.end67.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end62.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %cond.i = select i1 %cmp41.i, ptr @.str.140, ptr @.str.139
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.137, i32 noundef %port.0215.i, ptr noundef nonnull %cond.i, i32 noundef %call52.i) #13
  br label %if.end67.i

if.end67.i:                                       ; preds = %do.end62.i, %for.inc.i.if.end67.i_crit_edge, %sw.bb39.i.if.end67.i_crit_edge
  %storemerge193.i = phi i32 [ 129, %do.end62.i ], [ 128, %sw.bb39.i.if.end67.i_crit_edge ], [ 128, %for.inc.i.if.end67.i_crit_edge ]
  %63 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %storemerge193.i, ptr %rsp.i, align 8
  %64 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and2.i, ptr %42, align 4
  br label %if.then128.i

sw.bb70.i:                                        ; preds = %if.end16.sw.bb70.i_crit_edge, %if.end16.sw.bb70.i_crit_edge80
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %shr.i)
  %cmp72.i = icmp eq i32 %shr.i, 17
  %65 = xor i1 %cmp72.i, true
  %usb3.i = getelementptr inbounds %struct.tegra_xusb_soc, ptr %39, i32 0, i32 6, i32 3
  %66 = ptrtoint ptr %usb3.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %usb3.i, align 4
  %add79.i = add i32 %67, 1
  %count82.i = getelementptr inbounds %struct.tegra_xusb_soc, ptr %39, i32 0, i32 6, i32 3, i32 1
  %68 = ptrtoint ptr %count82.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %count82.i, align 4
  %shr.i196.i = lshr i32 %and2.i, %add79.i
  %notmask.i197.i = shl nsw i32 -1, %69
  %sub.i198.i = xor i32 %notmask.i197.i, -1
  %and.i199.i = and i32 %shr.i196.i, %sub.i198.i
  %70 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and.i199.i, ptr %mask.i, align 4
  %call87.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef %69, i32 noundef 0) #10
  %71 = ptrtoint ptr %count82.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %count82.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call87.i, i32 %72)
  %cmp92212.i = icmp ult i32 %call87.i, %72
  br i1 %cmp92212.i, label %sw.bb70.i.for.body93.i_crit_edge, label %sw.bb70.i.if.end119.i_crit_edge

sw.bb70.i.if.end119.i_crit_edge:                  ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119.i

sw.bb70.i.for.body93.i_crit_edge:                 ; preds = %sw.bb70.i
  br label %for.body93.i

for.body93.i:                                     ; preds = %for.inc102.i.for.body93.i_crit_edge, %sw.bb70.i.for.body93.i_crit_edge
  %port.1213.i = phi i32 [ %call107.i, %for.inc102.i.for.body93.i_crit_edge ], [ %call87.i, %sw.bb70.i.for.body93.i_crit_edge ]
  %call95.i = call i32 @tegra_xusb_padctl_usb3_set_lfps_detect(ptr noundef %37, i32 noundef %port.1213.i, i1 noundef zeroext %65) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %cmp96.i = icmp slt i32 %call95.i, 0
  br i1 %cmp96.i, label %do.end113.i, label %if.end98.i

if.end98.i:                                       ; preds = %for.body93.i
  br i1 %cmp72.i, label %if.then100.i, label %if.end98.i.for.inc102.i_crit_edge

if.end98.i.for.inc102.i_crit_edge:                ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc102.i

if.then100.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #10
  br label %for.inc102.i

for.inc102.i:                                     ; preds = %if.then100.i, %if.end98.i.for.inc102.i_crit_edge
  %73 = ptrtoint ptr %count82.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %count82.i, align 4
  %add106.i = add nuw i32 %port.1213.i, 1
  %call107.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef %74, i32 noundef %add106.i) #10
  %75 = ptrtoint ptr %count82.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %count82.i, align 4
  %cmp92.i = icmp ult i32 %call107.i, %76
  br i1 %cmp92.i, label %for.inc102.i.for.body93.i_crit_edge, label %for.inc102.i.if.end119.i_crit_edge

for.inc102.i.if.end119.i_crit_edge:               ; preds = %for.inc102.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119.i

for.inc102.i.for.body93.i_crit_edge:              ; preds = %for.inc102.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body93.i

do.end113.i:                                      ; preds = %for.body93.i
  call void @__sanitizer_cov_trace_pc() #12
  %cond115.i = select i1 %cmp72.i, ptr @.str.145, ptr @.str.144
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.142, ptr noundef nonnull %cond115.i, i32 noundef %port.1213.i, i32 noundef %call95.i) #13
  br label %if.end119.i

if.end119.i:                                      ; preds = %do.end113.i, %for.inc102.i.if.end119.i_crit_edge, %sw.bb70.i.if.end119.i_crit_edge
  %storemerge.i = phi i32 [ 129, %do.end113.i ], [ 128, %sw.bb70.i.if.end119.i_crit_edge ], [ 128, %for.inc102.i.if.end119.i_crit_edge ]
  %77 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %storemerge.i, ptr %rsp.i, align 8
  %78 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %and2.i, ptr %42, align 4
  br label %if.then128.i

do.end124.i:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.147, i32 noundef %shr.i) #13
  br label %tegra_xusb_mbox_handle.exit

sw.epilog.i:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i = mul i32 %and2.i, 1000
  %call12.i = tail call fastcc i32 @tegra_xusb_set_ss_clk(ptr noundef %data, i32 noundef %mul.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  %..i = select i1 %cmp13.i, i32 129, i32 128
  %79 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %..i, ptr %rsp.i, align 8
  %ss_src_clk.i = getelementptr inbounds %struct.tegra_xusb, ptr %data, i32 0, i32 15
  %80 = ptrtoint ptr %ss_src_clk.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ss_src_clk.i, align 4
  %call19.i = tail call i32 @clk_get_rate(ptr noundef %81) #10
  %div20.i = udiv i32 %call19.i, 1000
  %82 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %div20.i, ptr %42, align 4
  br label %if.then128.i

if.then128.i:                                     ; preds = %sw.epilog.i, %if.end119.i, %if.end67.i, %if.end36.i, %if.else22.i, %if.else.i, %if.then.i
  %83 = phi i32 [ %..i, %sw.epilog.i ], [ %storemerge194.i, %if.end36.i ], [ %storemerge193.i, %if.end67.i ], [ %storemerge.i, %if.end119.i ], [ 128, %if.else.i ], [ 129, %if.then.i ], [ 128, %if.else22.i ]
  %call133.i = call fastcc i32 @tegra_xusb_mbox_send(ptr noundef %data, ptr noundef nonnull %rsp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.i)
  %cmp134.i = icmp slt i32 %call133.i, 0
  br i1 %cmp134.i, label %do.end138.i, label %if.then128.i.tegra_xusb_mbox_handle.exit_crit_edge

if.then128.i.tegra_xusb_mbox_handle.exit_crit_edge: ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_xusb_mbox_handle.exit

do.end138.i:                                      ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %83)
  %cmp131.i = icmp eq i32 %83, 128
  %cond132.i = select i1 %cmp131.i, ptr @.str.150, ptr @.str.151
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.153, ptr noundef nonnull %cond132.i, i32 noundef %call133.i) #13
  br label %tegra_xusb_mbox_handle.exit

tegra_xusb_mbox_handle.exit:                      ; preds = %do.end138.i, %if.then128.i.tegra_xusb_mbox_handle.exit_crit_edge, %do.end124.i, %if.end16.tegra_xusb_mbox_handle.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rsp.i) #10
  br label %out

out:                                              ; preds = %tegra_xusb_mbox_handle.exit, %lor.lhs.false.out_crit_edge, %pm_runtime_suspended.exit.out_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_xusb, ptr %data, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %suspended = getelementptr inbounds %struct.tegra_xusb, ptr %data, i32 0, i32 36
  %0 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %suspended, align 4, !range !449
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_enable_firmware_messages(ptr noundef %tegra) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.tegra_xusb_mbox_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i) #10
  %0 = getelementptr inbounds %struct.tegra_xusb_mbox_msg, ptr %msg.i, i32 0, i32 1
  %1 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %msg.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %0, align 4
  %call.i = call fastcc i32 @tegra_xusb_mbox_send(ptr noundef %tegra, ptr noundef nonnull %msg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.__tegra_xusb_enable_firmware_messages.exit_crit_edge

entry.__tegra_xusb_enable_firmware_messages.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__tegra_xusb_enable_firmware_messages.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tegra, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.92, i32 noundef %call.i) #13
  br label %__tegra_xusb_enable_firmware_messages.exit

__tegra_xusb_enable_firmware_messages.exit:       ; preds = %do.end.i, %entry.__tegra_xusb_enable_firmware_messages.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_init_usb_phy(ptr noundef %tegra) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_usb_phys = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 29
  %0 = ptrtoint ptr %num_usb_phys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_usb_phys, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #10
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !451

devm_kcalloc.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %usbphy71 = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 28
  %4 = ptrtoint ptr %usbphy71 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %usbphy71, align 4
  br label %cleanup37

devm_kcalloc.exit:                                ; preds = %entry
  %5 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tegra, align 4
  %7 = extractvalue { i32, i1 } %2, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef %7, i32 noundef 3520) #10
  %usbphy = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 28
  %8 = ptrtoint ptr %usbphy to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %usbphy, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup37_crit_edge, label %do.body

devm_kcalloc.exit.cleanup37_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup37

do.body:                                          ; preds = %devm_kcalloc.exit
  %id_work = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 34
  tail call void @__init_work(ptr noundef %id_work, i32 noundef 0) #10
  %9 = ptrtoint ptr %id_work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %id_work, align 4
  %lockdep_map = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 34, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.161, ptr noundef nonnull @tegra_xusb_init_usb_phy.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry5 = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 34, i32 1
  %10 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 34, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 34, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @tegra_xhci_id_work, ptr %func, align 4
  %id_nb = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 33
  %13 = ptrtoint ptr %id_nb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @tegra_xhci_id_notify, ptr %id_nb, align 4
  %otg_usb2_port = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 30
  %14 = ptrtoint ptr %otg_usb2_port to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -22, ptr %otg_usb2_port, align 4
  %otg_usb3_port = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 31
  %15 = ptrtoint ptr %otg_usb3_port to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -22, ptr %otg_usb3_port, align 4
  %16 = ptrtoint ptr %num_usb_phys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_usb_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp77.not = icmp eq i32 %17, 0
  br i1 %cmp77.not, label %do.body.cleanup37_crit_edge, label %for.body.lr.ph

do.body.cleanup37_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup37

for.body.lr.ph:                                   ; preds = %do.body
  %soc.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 9
  %phys.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 26
  %hcd = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.078 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %18 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %soc.i, align 4
  %num_types.i = getelementptr inbounds %struct.tegra_xusb_soc, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %num_types.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_types.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp2.not.i = icmp eq i32 %21, 0
  br i1 %cmp2.not.i, label %for.body.cleanup_crit_edge, label %for.body.lr.ph.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.body
  %phy_types.i = getelementptr inbounds %struct.tegra_xusb_soc, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %phy_types.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_types.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %phy_count.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add8.i, %if.end.i.for.body.i_crit_edge ]
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tegra_xusb_phy_type, ptr %23, i32 %i.03.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %call3.i = tail call i32 @strncmp(ptr noundef %25, ptr noundef nonnull dereferenceable(5) @.str.53, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %tegra_xusb_get_phy.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %num.i = getelementptr %struct.tegra_xusb_phy_type, ptr %23, i32 %i.03.i, i32 1
  %26 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num.i, align 4
  %add8.i = add i32 %27, %phy_count.04.i
  %inc.i = add nuw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %21
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

tegra_xusb_get_phy.exit:                          ; preds = %for.body.i
  %28 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phys.i, align 4
  %add.i = add i32 %phy_count.04.i, %i.078
  %arrayidx4.i = getelementptr ptr, ptr %29, i32 %add.i
  %30 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx4.i, align 4
  %tobool9.not = icmp eq ptr %31, null
  br i1 %tobool9.not, label %tegra_xusb_get_phy.exit.cleanup_crit_edge, label %if.end11

tegra_xusb_get_phy.exit.cleanup_crit_edge:        ; preds = %tegra_xusb_get_phy.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %tegra_xusb_get_phy.exit
  %32 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tegra, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 27
  %34 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node, align 8
  %call15 = tail call ptr @devm_usb_get_phy_by_node(ptr noundef %33, ptr noundef %35, ptr noundef %id_nb) #10
  %36 = ptrtoint ptr %usbphy to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usbphy, align 4
  %arrayidx = getelementptr ptr, ptr %37, i32 %i.078
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call15, ptr %arrayidx, align 4
  %39 = load ptr, ptr %usbphy, align 4
  %arrayidx18 = getelementptr ptr, ptr %39, i32 %i.078
  %40 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx18, align 4
  %cmp.i = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %do.body21

do.body21:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xusb_init_usb_phy.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_xusb_init_usb_phy, %if.then26)) #10
          to label %do.end30 [label %if.then26], !srcloc !452

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tegra, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xusb_init_usb_phy.__UNIQUE_ID_ddebug299, ptr noundef %43, ptr noundef nonnull @.str.163, i32 noundef %i.078) #10
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body21
  %44 = ptrtoint ptr %usbphy to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usbphy, align 4
  %arrayidx32 = getelementptr ptr, ptr %45, i32 %i.078
  %46 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx32, align 4
  %otg = getelementptr inbounds %struct.usb_phy, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %otg, align 4
  %50 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hcd, align 4
  %tobool.not.i68 = icmp eq ptr %49, null
  br i1 %tobool.not.i68, label %do.end30.cleanup_crit_edge, label %land.lhs.true.i

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %do.end30
  %set_host.i = getelementptr inbounds %struct.usb_otg, ptr %49, i32 0, i32 6
  %52 = ptrtoint ptr %set_host.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_host.i, align 4
  %tobool1.not.i = icmp eq ptr %53, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i69

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i69:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %53(ptr noundef nonnull %49, ptr noundef %51) #10
  br label %cleanup

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %arrayidx18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.i69, %land.lhs.true.i.cleanup_crit_edge, %do.end30.cleanup_crit_edge, %tegra_xusb_get_phy.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.078, 1
  %55 = ptrtoint ptr %num_usb_phys to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_usb_phys, align 4
  %cmp = icmp ult i32 %inc, %56
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.cleanup37_crit_edge

cleanup.cleanup37_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup37

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup37:                                        ; preds = %cleanup.cleanup37_crit_edge, %do.body.cleanup37_crit_edge, %devm_kcalloc.exit.cleanup37_crit_edge, %devm_kcalloc.exit.thread
  %retval.0 = phi i32 [ -12, %devm_kcalloc.exit.cleanup37_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ 0, %do.body.cleanup37_crit_edge ], [ 0, %cleanup.cleanup37_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xusb_powergate_partitions(ptr nocapture noundef readonly %tegra) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tegra, align 4
  %use_genpd = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 25
  %2 = ptrtoint ptr %use_genpd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_genpd, align 4, !range !449
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %genpd_dev_host = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 23
  %4 = ptrtoint ptr %genpd_dev_host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %genpd_dev_host, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.179) #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %genpd_dev_ss = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 24
  %6 = ptrtoint ptr %genpd_dev_ss to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %genpd_dev_ss, align 4
  %call.i1 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp4 = icmp slt i32 %call.i1, 0
  br i1 %cmp4, label %do.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.182) #13
  %8 = ptrtoint ptr %genpd_dev_host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %genpd_dev_host, align 4
  %call.i2 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %call12 = tail call i32 @tegra_powergate_power_off(i32 noundef 22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end18

do.end17:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.179) #13
  br label %cleanup

if.end18:                                         ; preds = %if.else
  %call19 = tail call i32 @tegra_powergate_power_off(i32 noundef 20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.182) #13
  %host_clk = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 12
  %10 = ptrtoint ptr %host_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_clk, align 4
  %host_rst = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 21
  %12 = ptrtoint ptr %host_rst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host_rst, align 4
  %call25 = tail call i32 @tegra_powergate_sequence_power_up(i32 noundef 22, ptr noundef %11, ptr noundef %13) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.end18.cleanup_crit_edge, %do.end17, %do.end8, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xusb_phy_disable(ptr nocapture noundef readonly %tegra) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_phys = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 27
  %0 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9.not = icmp eq i32 %1, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %phys = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phys, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.010
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @phy_power_off(ptr noundef %5) #10
  %6 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phys, align 4
  %arrayidx2 = getelementptr ptr, ptr %7, i32 %i.010
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %call3 = tail call i32 @phy_exit(ptr noundef %9) #10
  %inc = add nuw i32 %i.010, 1
  %10 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_phys, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xusb_clk_disable(ptr nocapture noundef readonly %tegra) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pll_e = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 20
  %0 = ptrtoint ptr %pll_e to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll_e, align 4
  tail call void @clk_disable(ptr noundef %1) #10
  tail call void @clk_unprepare(ptr noundef %1) #10
  %host_clk = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 12
  %2 = ptrtoint ptr %host_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  %ss_clk = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 14
  %4 = ptrtoint ptr %ss_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ss_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  %falcon_clk = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 13
  %6 = ptrtoint ptr %falcon_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %falcon_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #10
  tail call void @clk_unprepare(ptr noundef %7) #10
  %fs_src_clk = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 17
  %8 = ptrtoint ptr %fs_src_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs_src_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #10
  tail call void @clk_unprepare(ptr noundef %9) #10
  %hs_src_clk = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 16
  %10 = ptrtoint ptr %hs_src_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hs_src_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #10
  tail call void @clk_unprepare(ptr noundef %11) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xusb_powerdomain_remove(ptr nocapture noundef readonly %tegra) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %use_genpd = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 25
  %0 = ptrtoint ptr %use_genpd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_genpd, align 4, !range !449
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.end

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end:                                           ; preds = %entry
  %genpd_dev_ss = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 24
  %2 = ptrtoint ptr %genpd_dev_ss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %genpd_dev_ss, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dev_pm_domain_detach(ptr noundef nonnull %3, i1 noundef zeroext true) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %genpd_dev_host = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 23
  %4 = ptrtoint ptr %genpd_dev_host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %genpd_dev_host, align 4
  %tobool.not.i1 = icmp eq ptr %5, null
  %cmp.i2 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i3 = or i1 %tobool.not.i1, %cmp.i2
  br i1 %spec.select.i3, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dev_pm_domain_detach(ptr noundef nonnull %5, i1 noundef zeroext true) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_xusb_padctl_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_domain_attach_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_set_ss_clk(ptr nocapture noundef readonly %tegra, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ss_src_clk = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 15
  %0 = ptrtoint ptr %ss_src_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ss_src_clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %rate)
  %cmp = icmp eq i32 %call, %rate
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.225)
  switch i32 %rate, label %do.end [
    i32 120000000, label %sw.bb
    i32 12000000, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end
  %call1 = tail call ptr @clk_get_parent(ptr noundef %1) #10
  %call2 = tail call i32 @clk_get_rate(ptr noundef %call1) #10
  %pll_u_480m = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 18
  %3 = ptrtoint ptr %pll_u_480m to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pll_u_480m, align 4
  %call3 = tail call i32 @clk_get_rate(ptr noundef %4) #10
  %div4 = udiv i32 %call3, 120000000
  %div5 = udiv i32 %call2, %div4
  %call6 = tail call i32 @clk_set_rate(ptr noundef %1, i32 noundef %div5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  %5 = ptrtoint ptr %pll_u_480m to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pll_u_480m, align 4
  %call10 = tail call i32 @clk_set_parent(ptr noundef %1, ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %call14 = tail call i32 @clk_set_rate(ptr noundef %1, i32 noundef 120000000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.sw.epilog_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  %clk_m = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 19
  %7 = ptrtoint ptr %clk_m to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk_m, align 4
  %call19 = tail call i32 @clk_set_parent(ptr noundef %1, ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %sw.bb18.cleanup_crit_edge

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %sw.bb18
  %call23 = tail call i32 @clk_set_rate(ptr noundef %1, i32 noundef 12000000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.sw.epilog_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tegra, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.102, i32 noundef %rate) #13
  br label %cleanup

sw.epilog:                                        ; preds = %if.end22.sw.epilog_crit_edge, %if.end13.sw.epilog_crit_edge
  %call27 = tail call i32 @clk_get_rate(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call27, i32 %rate)
  %cmp28.not = icmp eq i32 %call27, %rate
  br i1 %cmp28.not, label %sw.epilog.cleanup_crit_edge, label %do.end32

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end32:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tegra, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.105) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %sw.epilog.cleanup_crit_edge, %do.end, %if.end22.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end32 ], [ 0, %entry.cleanup_crit_edge ], [ %call6, %sw.bb.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call19, %sw.bb18.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_sequence_power_up(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_power_off(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_padctl_usb3_save_context(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_padctl_hsic_set_idle(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_padctl_usb3_set_lfps_detect(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_mbox_send(ptr nocapture noundef readonly %tegra, ptr nocapture noundef readonly %msg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg, align 4
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %2)
  %switch = icmp eq i32 %2, 128
  br i1 %switch, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then:                                          ; preds = %entry
  %soc = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 9
  %3 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soc, align 4
  %owner = getelementptr inbounds %struct.tegra_xusb_soc, ptr %4, i32 0, i32 7, i32 3
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %owner, align 2
  %conv = zext i16 %6 to i32
  %fpci_base.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 8
  %7 = ptrtoint ptr %fpci_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fpci_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %conv
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3.not = icmp eq i32 %9, 0
  br i1 %cmp3.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tegra, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.155) #13
  br label %cleanup65

if.end:                                           ; preds = %if.then
  %12 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %soc, align 4
  %owner8 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %13, i32 0, i32 7, i32 3
  %14 = ptrtoint ptr %owner8 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %owner8, align 2
  %conv9 = zext i16 %15 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %fpci_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fpci_base.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %17, i32 %conv9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 33554432) #10, !srcloc !456
  %18 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %soc, align 4
  %owner12 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %19, i32 0, i32 7, i32 3
  %20 = ptrtoint ptr %owner12 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %owner12, align 2
  %conv13 = zext i16 %21 to i32
  %22 = ptrtoint ptr %fpci_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fpci_base.i, align 4
  %add.ptr.i96 = getelementptr i8, ptr %23, i32 %conv13
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96) #10, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %24)
  %cmp15.not = icmp eq i32 %24, 33554432
  br i1 %cmp15.not, label %if.end.if.end23_crit_edge, label %do.end20

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tegra, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.158) #13
  br label %cleanup65

if.end23:                                         ; preds = %if.end.if.end23_crit_edge, %entry.if.end23_crit_edge
  %27 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg, align 4
  %shl.i = shl i32 %28, 24
  %data.i = getelementptr inbounds %struct.tegra_xusb_mbox_msg, ptr %msg, i32 0, i32 1
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data.i, align 4
  %and1.i = and i32 %30, 16777215
  %or.i = or i32 %and1.i, %shl.i
  %soc25 = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 9
  %31 = ptrtoint ptr %soc25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %soc25, align 4
  %data_in = getelementptr inbounds %struct.tegra_xusb_soc, ptr %32, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %data_in to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %data_in, align 2
  %conv27 = zext i16 %34 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %fpci_base.i97 = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 8
  %36 = ptrtoint ptr %fpci_base.i97 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fpci_base.i97, align 4
  %add.ptr.i98 = getelementptr i8, ptr %37, i32 %conv27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 %35) #10, !srcloc !456
  %38 = ptrtoint ptr %soc25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %soc25, align 4
  %mbox29 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %mbox29 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mbox29, align 4
  %conv31 = zext i16 %41 to i32
  %42 = ptrtoint ptr %fpci_base.i97 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fpci_base.i97, align 4
  %add.ptr.i100 = getelementptr i8, ptr %43, i32 %conv31
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100) #10, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  %45 = or i32 %44, 136
  %46 = ptrtoint ptr %soc25 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %soc25, align 4
  %mbox34 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %mbox34 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %mbox34, align 4
  %conv36 = zext i16 %49 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %50 = ptrtoint ptr %fpci_base.i97 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fpci_base.i97, align 4
  %add.ptr.i102 = getelementptr i8, ptr %51, i32 %conv36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %45) #10, !srcloc !456
  br i1 %switch, label %if.end23.if.end64_crit_edge, label %if.then37

if.end23.if.end64_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then37:                                        ; preds = %if.end23
  %52 = tail call i32 @llvm.bswap.i32(i32 %45)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %53, 25
  %54 = load volatile i32, ptr @jiffies, align 128
  %sub107 = sub i32 %54, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub107)
  %cmp39108 = icmp slt i32 %sub107, 0
  br i1 %cmp39108, label %if.then37.while.body_crit_edge, label %if.then37.while.end_crit_edge

if.then37.while.end_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then37.while.body_crit_edge:                   ; preds = %if.then37
  br label %while.body

while.body:                                       ; preds = %if.end49.while.body_crit_edge, %if.then37.while.body_crit_edge
  %55 = ptrtoint ptr %soc25 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %soc25, align 4
  %owner43 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %56, i32 0, i32 7, i32 3
  %57 = ptrtoint ptr %owner43 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %owner43, align 2
  %conv44 = zext i16 %58 to i32
  %59 = ptrtoint ptr %fpci_base.i97 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fpci_base.i97, align 4
  %add.ptr.i104 = getelementptr i8, ptr %60, i32 %conv44
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104) #10, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp46 = icmp eq i32 %61, 0
  br i1 %cmp46, label %while.body.while.end_crit_edge, label %if.end49

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end49:                                         ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %62, %add
  %cmp39 = icmp slt i32 %sub, 0
  br i1 %cmp39, label %if.end49.while.body_crit_edge, label %while.cond.while.end_crit_edge

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %63 = tail call i32 @llvm.bswap.i32(i32 %61) #10
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.body.while.end_crit_edge, %if.then37.while.end_crit_edge
  %value.1 = phi i32 [ %63, %while.cond.while.end_crit_edge ], [ %52, %if.then37.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %sub50 = sub i32 %add, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub50)
  %cmp51 = icmp slt i32 %sub50, 0
  br i1 %cmp51, label %if.then53, label %while.end.if.end59_crit_edge

while.end.if.end59_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then53:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %soc25 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %soc25, align 4
  %owner56 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %66, i32 0, i32 7, i32 3
  %67 = ptrtoint ptr %owner56 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %owner56, align 2
  %conv57 = zext i16 %68 to i32
  %69 = ptrtoint ptr %fpci_base.i97 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fpci_base.i97, align 4
  %add.ptr.i106 = getelementptr i8, ptr %70, i32 %conv57
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106) #10, !srcloc !453
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %while.end.if.end59_crit_edge
  %value.2 = phi i32 [ %72, %if.then53 ], [ %value.1, %while.end.if.end59_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value.2)
  %cmp60.not = icmp eq i32 %value.2, 0
  br i1 %cmp60.not, label %if.end59.if.end64_crit_edge, label %if.end59.cleanup65_crit_edge

if.end59.cleanup65_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup65

if.end59.if.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.end64:                                         ; preds = %if.end59.if.end64_crit_edge, %if.end23.if.end64_crit_edge
  br label %cleanup65

cleanup65:                                        ; preds = %if.end64, %if.end59.cleanup65_crit_edge, %do.end20, %do.end
  %retval.1 = phi i32 [ 0, %if.end64 ], [ -110, %if.end59.cleanup65_crit_edge ], [ -16, %do.end ], [ -16, %do.end20 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_xhci_id_work(ptr noundef %work) #2 align 64 {
entry:
  %msg = alloca %struct.tegra_xusb_mbox_msg, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -232
  %hcd = getelementptr i8, ptr %work, i32 -224
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %3, %if.else.i ], [ %1, %entry.hcd_to_xhci.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #10
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %msg, align 4, !annotation !450
  %5 = getelementptr inbounds %struct.tegra_xusb_mbox_msg, ptr %msg, i32 0, i32 1
  %otg_usb2_port = getelementptr i8, ptr %work, i32 -24
  %6 = ptrtoint ptr %otg_usb2_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %otg_usb2_port, align 4
  %soc.i = getelementptr i8, ptr %work, i32 -108
  %8 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc.i, align 4
  %num_types.i = getelementptr inbounds %struct.tegra_xusb_soc, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %num_types.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_types.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2.not.i = icmp eq i32 %11, 0
  br i1 %cmp2.not.i, label %hcd_to_xhci.exit.tegra_xusb_get_phy.exit_crit_edge, label %for.body.lr.ph.i

hcd_to_xhci.exit.tegra_xusb_get_phy.exit_crit_edge: ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_xusb_get_phy.exit

for.body.lr.ph.i:                                 ; preds = %hcd_to_xhci.exit
  %phy_types.i = getelementptr inbounds %struct.tegra_xusb_soc, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %phy_types.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_types.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %phy_count.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add8.i, %if.end.i.for.body.i_crit_edge ]
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tegra_xusb_phy_type, ptr %13, i32 %i.03.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %call3.i = tail call i32 @strncmp(ptr noundef %15, ptr noundef nonnull dereferenceable(5) @.str.53, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i67 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i67, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %phys.i = getelementptr i8, ptr %work, i32 -40
  %16 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phys.i, align 4
  %add.i = add i32 %phy_count.04.i, %7
  %arrayidx4.i = getelementptr ptr, ptr %17, i32 %add.i
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx4.i, align 4
  br label %tegra_xusb_get_phy.exit

if.end.i:                                         ; preds = %for.body.i
  %num.i = getelementptr %struct.tegra_xusb_phy_type, ptr %13, i32 %i.03.i, i32 1
  %20 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num.i, align 4
  %add8.i = add i32 %21, %phy_count.04.i
  %inc.i = add nuw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %if.end.i.tegra_xusb_get_phy.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i.tegra_xusb_get_phy.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_xusb_get_phy.exit

tegra_xusb_get_phy.exit:                          ; preds = %if.end.i.tegra_xusb_get_phy.exit_crit_edge, %if.then.i, %hcd_to_xhci.exit.tegra_xusb_get_phy.exit_crit_edge
  %retval.0.i68 = phi ptr [ %19, %if.then.i ], [ null, %hcd_to_xhci.exit.tegra_xusb_get_phy.exit_crit_edge ], [ null, %if.end.i.tegra_xusb_get_phy.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %22 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %status, align 4, !annotation !450
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xhci_id_work.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_xhci_id_work, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !452

if.then:                                          ; preds = %tegra_xusb_get_phy.exit
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %host_mode = getelementptr i8, ptr %work, i32 -16
  %25 = ptrtoint ptr %host_mode to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %host_mode, align 4, !range !449
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool6.not = icmp eq i8 %26, 0
  %cond = select i1 %tobool6.not, ptr @.str.167, ptr @.str.166
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xhci_id_work.__UNIQUE_ID_ddebug296, ptr noundef %24, ptr noundef nonnull @.str.165, ptr noundef nonnull %cond) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %tegra_xusb_get_phy.exit
  %lock = getelementptr i8, ptr %work, i32 -220
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %host_mode7 = getelementptr i8, ptr %work, i32 -16
  %27 = ptrtoint ptr %host_mode7 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %host_mode7, align 4, !range !449
  %29 = zext i8 %28 to i32
  %call11 = tail call i32 @phy_set_mode_ext(ptr noundef %retval.0.i68, i32 noundef 11, i32 noundef %29) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %30 = ptrtoint ptr %host_mode7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %host_mode7, align 4, !range !449
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool15.not = icmp eq i8 %31, 0
  %otg_usb3_port39 = getelementptr i8, ptr %work, i32 -20
  %32 = ptrtoint ptr %otg_usb3_port39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %otg_usb3_port39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp40 = icmp sgt i32 %33, -1
  br i1 %tobool15.not, label %if.else38, label %if.then16

if.then16:                                        ; preds = %do.end
  br i1 %cmp40, label %if.then17, label %if.then16.if.end37_crit_edge

if.then16.if.end37_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then17:                                        ; preds = %if.then16
  %34 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %soc.i, align 4
  %otg_reset_sspi = getelementptr inbounds %struct.tegra_xusb_soc, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %otg_reset_sspi to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %otg_reset_sspi, align 1, !range !449
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool18.not = icmp eq i8 %37, 0
  br i1 %tobool18.not, label %if.then17.if.end36_crit_edge, label %if.then19

if.then17.if.end36_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then19:                                        ; preds = %if.then17
  %38 = load ptr, ptr getelementptr inbounds (%struct.hc_driver, ptr @tegra_xhci_hc_driver, i32 0, i32 19), align 4
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %shared_hcd, align 4
  %41 = trunc i32 %33 to i16
  %conv = add i16 %41, 1
  %call21 = call i32 %38(ptr noundef %40, i16 noundef zeroext -23808, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef nonnull %status, i16 noundef zeroext 4) #10
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status, align 4
  %and = and i32 %43, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.then19.if.end24_crit_edge, label %if.then23

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @tegra_xhci_set_port_power(ptr noundef %add.ptr, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then19.if.end24_crit_edge
  %44 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16, ptr %msg, align 4
  %45 = ptrtoint ptr %otg_usb3_port39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %otg_usb3_port39, align 4
  %add26 = add i32 %46, 1
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add26, ptr %5, align 4
  %call27 = call fastcc i32 @tegra_xusb_mbox_send(ptr noundef %add.ptr, ptr noundef nonnull %msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end33, label %if.end24.if.end36_crit_edge

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

do.end33:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.168, i32 noundef %call27) #13
  br label %if.end36

if.end36:                                         ; preds = %do.end33, %if.end24.if.end36_crit_edge, %if.then17.if.end36_crit_edge
  call fastcc void @tegra_xhci_set_port_power(ptr noundef %add.ptr, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then16.if.end37_crit_edge
  call fastcc void @tegra_xhci_set_port_power(ptr noundef %add.ptr, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %if.end44

if.else38:                                        ; preds = %do.end
  br i1 %cmp40, label %if.then42, label %if.else38.if.end43_crit_edge

if.else38.if.end43_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then42:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @tegra_xhci_set_port_power(ptr noundef %add.ptr, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.else38.if.end43_crit_edge
  tail call fastcc void @tegra_xhci_set_port_power(ptr noundef %add.ptr, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xhci_id_notify(ptr noundef %nb, i32 noundef %action, ptr noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -220
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xhci_id_notify.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_xhci_id_notify, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !452

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %last_event = getelementptr inbounds %struct.usb_phy, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %last_event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_event, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xhci_id_notify.__UNIQUE_ID_ddebug297, ptr noundef %1, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.176, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %host_mode = getelementptr i8, ptr %nb, i32 -4
  %4 = ptrtoint ptr %host_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %host_mode, align 4, !range !449
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  %last_event9 = getelementptr inbounds %struct.usb_phy, ptr %data, i32 0, i32 4
  %6 = ptrtoint ptr %last_event9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_event9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp10.not = icmp eq i32 %7, 2
  br i1 %tobool4.not, label %land.lhs.true8, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  br i1 %cmp10.not, label %land.lhs.true.do.body12_crit_edge, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true.do.body12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

land.lhs.true8:                                   ; preds = %do.end
  br i1 %cmp10.not, label %land.lhs.true8.if.end31_crit_edge, label %land.lhs.true8.do.body12_crit_edge

land.lhs.true8.do.body12_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

land.lhs.true8.if.end31_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

do.body12:                                        ; preds = %land.lhs.true8.do.body12_crit_edge, %land.lhs.true.do.body12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xhci_id_notify.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_xhci_id_notify, %if.then24)) #10
          to label %cleanup [label %if.then24], !srcloc !452

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %10 = ptrtoint ptr %host_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %host_mode, align 4, !range !449
  %12 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xhci_id_notify.__UNIQUE_ID_ddebug298, ptr noundef %9, ptr noundef nonnull @.str.178, i32 noundef %12) #10
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true8.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge
  %num_usb_phys.i = getelementptr i8, ptr %nb, i32 -16
  %13 = ptrtoint ptr %num_usb_phys.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_usb_phys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp11.not.i = icmp eq i32 %14, 0
  br i1 %cmp11.not.i, label %if.end31.tegra_xusb_get_usb2_port.exit_crit_edge, label %for.body.lr.ph.i

if.end31.tegra_xusb_get_usb2_port.exit_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_xusb_get_usb2_port.exit

for.body.lr.ph.i:                                 ; preds = %if.end31
  %usbphy1.i = getelementptr i8, ptr %nb, i32 -20
  %15 = ptrtoint ptr %usbphy1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usbphy1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %16, i32 %i.012.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp ne ptr %18, null
  %cmp4.i = icmp eq ptr %18, %data
  %or.cond.i = and i1 %tobool.not.i, %cmp4.i
  br i1 %or.cond.i, label %for.body.i.tegra_xusb_get_usb2_port.exit_crit_edge, label %for.inc.i

for.body.i.tegra_xusb_get_usb2_port.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_xusb_get_usb2_port.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.inc.i.tegra_xusb_get_usb2_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.tegra_xusb_get_usb2_port.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_xusb_get_usb2_port.exit

tegra_xusb_get_usb2_port.exit:                    ; preds = %for.inc.i.tegra_xusb_get_usb2_port.exit_crit_edge, %for.body.i.tegra_xusb_get_usb2_port.exit_crit_edge, %if.end31.tegra_xusb_get_usb2_port.exit_crit_edge
  %retval.0.i61 = phi i32 [ -1, %if.end31.tegra_xusb_get_usb2_port.exit_crit_edge ], [ %i.012.i, %for.body.i.tegra_xusb_get_usb2_port.exit_crit_edge ], [ -1, %for.inc.i.tegra_xusb_get_usb2_port.exit_crit_edge ]
  %otg_usb2_port = getelementptr i8, ptr %nb, i32 -12
  %19 = ptrtoint ptr %otg_usb2_port to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i61, ptr %otg_usb2_port, align 4
  %padctl = getelementptr i8, ptr %nb, i32 -88
  %20 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %padctl, align 4
  %call34 = tail call i32 @tegra_xusb_padctl_get_usb3_companion(ptr noundef %21, i32 noundef %retval.0.i61) #10
  %otg_usb3_port = getelementptr i8, ptr %nb, i32 -8
  %22 = ptrtoint ptr %otg_usb3_port to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call34, ptr %otg_usb3_port, align 4
  %last_event35 = getelementptr inbounds %struct.usb_phy, ptr %data, i32 0, i32 4
  %23 = ptrtoint ptr %last_event35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %last_event35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp36 = icmp eq i32 %24, 2
  %frombool40 = zext i1 %cmp36 to i8
  %25 = ptrtoint ptr %host_mode to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool40, ptr %host_mode, align 4
  %id_work = getelementptr i8, ptr %nb, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %id_work) #10
  br label %cleanup

cleanup:                                          ; preds = %tegra_xusb_get_usb2_port.exit, %if.then24, %do.body12
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xhci_set_port_power(ptr nocapture noundef readonly %tegra, i1 noundef zeroext %main, i1 noundef zeroext %set) unnamed_addr #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 2
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %3, %if.else.i ], [ %1, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 1
  %cond.in = select i1 %main, ptr %hcd_priv.i, ptr %shared_hcd
  %4 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond = load ptr, ptr %cond.in, align 4
  %5 = or i1 %main, %set
  %6 = select i1 %5, i32 10, i32 1000
  %conv = select i1 %set, i16 8963, i16 8961
  %otg_usb3_port = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 31
  %otg_usb2_port = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 30
  %cond18 = select i1 %main, i32 256, i32 512
  %cond14.in.in = select i1 %main, ptr %otg_usb2_port, ptr %otg_usb3_port
  %7 = ptrtoint ptr %cond14.in.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %cond14.in = load i32, ptr %cond14.in.in, align 4
  %8 = trunc i32 %cond14.in to i16
  %conv15 = add i16 %8, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %status, align 4, !annotation !450
  %cond24 = select i1 %set, i32 %cond18, i32 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xhci_set_port_power.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_xhci_set_port_power, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !452

if.then:                                          ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tegra, align 4
  %cond33 = select i1 %set, ptr @.str.171, ptr @.str.172
  %cond36 = select i1 %main, ptr @.str.173, ptr @.str.174
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xhci_set_port_power.__UNIQUE_ID_ddebug295, ptr noundef %11, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.169, ptr noundef nonnull %cond33, ptr noundef nonnull %cond36) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %hcd_to_xhci.exit
  %driver = getelementptr inbounds %struct.usb_hcd, ptr %cond, i32 0, i32 9
  %12 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver, align 8
  %hub_control = getelementptr inbounds %struct.hc_driver, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %hub_control to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hub_control, align 4
  %call37 = tail call i32 %15(ptr noundef %cond, i16 noundef zeroext %conv, i16 noundef zeroext 8, i16 noundef zeroext %conv15, ptr noundef null, i16 noundef zeroext 0) #10
  br label %do.body38

do.body38:                                        ; preds = %do.cond47.do.body38_crit_edge, %do.end
  %wait.0 = phi i32 [ %6, %do.end ], [ %dec, %do.cond47.do.body38_crit_edge ]
  %16 = load ptr, ptr getelementptr inbounds (%struct.hc_driver, ptr @tegra_xhci_hc_driver, i32 0, i32 19), align 4
  %call39 = call i32 %16(ptr noundef %cond, i16 noundef zeroext -23808, i16 noundef zeroext 0, i16 noundef zeroext %conv15, ptr noundef nonnull %status, i16 noundef zeroext 4) #10
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 4
  %and = and i32 %18, %cond18
  call void @__sanitizer_cov_trace_cmp4(i32 %cond24, i32 %and)
  %cmp = icmp eq i32 %cond24, %and
  br i1 %cmp, label %do.body38.do.end50_crit_edge, label %if.end42

do.body38.do.end50_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

if.end42:                                         ; preds = %do.body38
  br i1 %5, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  call void @usleep_range_state(i32 noundef 600, i32 noundef 700, i32 noundef 2) #10
  br label %do.cond47

if.else:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #10
  br label %do.cond47

do.cond47:                                        ; preds = %if.else, %if.then45
  %dec = add nsw i32 %wait.0, -1
  %cmp48.not = icmp eq i32 %dec, 0
  br i1 %cmp48.not, label %do.cond47.do.end50_crit_edge, label %do.cond47.do.body38_crit_edge

do.cond47.do.body38_crit_edge:                    ; preds = %do.cond47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body38

do.cond47.do.end50_crit_edge:                     ; preds = %do.cond47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

do.end50:                                         ; preds = %do.cond47.do.end50_crit_edge, %do.body38.do.end50_crit_edge
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  %and51 = and i32 %20, %cond18
  call void @__sanitizer_cov_trace_cmp4(i32 %cond24, i32 %and51)
  %cmp52.not = icmp eq i32 %cond24, %and51
  br i1 %cmp52.not, label %do.end50.if.end65_crit_edge, label %do.end57

do.end50.if.end65_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

do.end57:                                         ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tegra, align 4
  %cond61 = select i1 %set, ptr @.str.171, ptr @.str.172
  %cond64 = select i1 %main, ptr @.str.173, ptr @.str.174
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.175, ptr noundef nonnull %cond61, ptr noundef nonnull %cond64, i32 noundef %20) #13
  br label %if.end65

if.end65:                                         ; preds = %do.end57, %do.end50.if.end65_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_padctl_get_usb3_companion(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xusb_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mbox_irq = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mbox_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mbox_irq, align 4
  tail call void @synchronize_irq(i32 noundef %3) #10
  %lock = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.then, label %pm_runtime_suspended.exit.if.end4_crit_edge

pm_runtime_suspended.exit.if.end4_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %pm_runtime_suspended.exit
  %call2 = tail call fastcc i32 @tegra_xusb_exit_elpg(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.if.end21_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %pm_runtime_suspended.exit.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call5 = tail call fastcc i32 @tegra_xusb_enter_elpg(ptr noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %out

if.then7:                                         ; preds = %if.end4
  %7 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i41 = icmp eq i32 %8, 2
  br i1 %cmp.i41, label %pm_runtime_suspended.exit46, label %if.then7.if.end21_crit_edge

if.then7.if.end21_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

pm_runtime_suspended.exit46:                      ; preds = %if.then7
  %disable_depth.i42 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %9 = ptrtoint ptr %disable_depth.i42 to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i43 = load i16, ptr %disable_depth.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i43)
  %tobool.not.i44 = icmp ult i16 %bf.load.i43, 8192
  br i1 %tobool.not.i44, label %if.then9, label %pm_runtime_suspended.exit46.if.end21_crit_edge

pm_runtime_suspended.exit46.if.end21_crit_edge:   ; preds = %pm_runtime_suspended.exit46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then9:                                         ; preds = %pm_runtime_suspended.exit46
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #10
  tail call void @pm_runtime_enable(ptr noundef %dev) #10
  br label %if.end21

out:                                              ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then13, label %out.if.end21_crit_edge

out.if.end21_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then13:                                        ; preds = %out
  %suspended = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 36
  %10 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %suspended, align 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i47 = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i47)
  %tobool.not.i48 = icmp sgt i16 %bf.load.i47, -1
  br i1 %tobool.not.i48, label %if.then13.if.end21_crit_edge, label %device_may_wakeup.exit

if.then13.if.end21_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

device_may_wakeup.exit:                           ; preds = %if.then13
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %12 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %13, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end21_crit_edge, label %if.then15

device_may_wakeup.exit.if.end21_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then15:                                        ; preds = %device_may_wakeup.exit
  %padctl_irq = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %padctl_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %padctl_irq, align 4
  %call.i50 = tail call i32 @irq_set_irq_wake(i32 noundef %15, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool17.not = icmp eq i32 %call.i50, 0
  br i1 %tobool17.not, label %if.then15.if.end21_crit_edge, label %do.end

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end:                                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.199) #13
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.then15.if.end21_crit_edge, %device_may_wakeup.exit.if.end21_crit_edge, %if.then13.if.end21_crit_edge, %out.if.end21_crit_edge, %if.then9, %pm_runtime_suspended.exit46.if.end21_crit_edge, %if.then7.if.end21_crit_edge, %if.then.if.end21_crit_edge
  %err.053 = phi i32 [ 0, %device_may_wakeup.exit.if.end21_crit_edge ], [ 0, %do.end ], [ 0, %if.then15.if.end21_crit_edge ], [ %call5, %out.if.end21_crit_edge ], [ %call5, %pm_runtime_suspended.exit46.if.end21_crit_edge ], [ %call5, %if.then9 ], [ %call2, %if.then.if.end21_crit_edge ], [ %call5, %if.then7.if.end21_crit_edge ], [ 0, %if.then13.if.end21_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %err.053
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xusb_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %suspended = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 4, !range !449
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @tegra_xusb_exit_elpg(ptr noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end5.if.end12_crit_edge, label %device_may_wakeup.exit

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

device_may_wakeup.exit:                           ; preds = %if.end5
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end12_crit_edge, label %if.then7

device_may_wakeup.exit.if.end12_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then7:                                         ; preds = %device_may_wakeup.exit
  %padctl_irq = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %padctl_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %padctl_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %do.end

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.222) #13
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.then7.if.end12_crit_edge, %device_may_wakeup.exit.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %9 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %suspended, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %call.i29 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #10
  tail call void @pm_runtime_enable(ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then3, %if.then
  %retval.0 = phi i32 [ %call2, %if.then3 ], [ 0, %if.end12 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xusb_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mbox_irq = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mbox_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mbox_irq, align 4
  tail call void @synchronize_irq(i32 noundef %3) #10
  %lock = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %call1 = tail call fastcc i32 @tegra_xusb_enter_elpg(ptr noundef %1, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xusb_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %call1 = tail call fastcc i32 @tegra_xusb_exit_elpg(ptr noundef %1, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_exit_elpg(ptr noundef %tegra, i1 noundef zeroext %runtime) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.tegra_xusb_mbox_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 2
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %3, %if.else.i ], [ %1, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %4 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tegra, align 4
  br i1 %runtime, label %hcd_to_xhci.exit.cond.end_crit_edge, label %cond.false

hcd_to_xhci.exit.cond.end_crit_edge:              ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %hcd_to_xhci.exit
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i195 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i195, label %cond.false.device_may_wakeup.exit_crit_edge, label %land.rhs.i

cond.false.device_may_wakeup.exit_crit_edge:      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  %wakeup.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %8, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %cond.false.device_may_wakeup.exit_crit_edge
  %9 = phi i1 [ false, %cond.false.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  %conv = zext i1 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %device_may_wakeup.exit, %hcd_to_xhci.exit.cond.end_crit_edge
  %cond = phi i32 [ %conv, %device_may_wakeup.exit ], [ 1, %hcd_to_xhci.exit.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool3.not = icmp eq i32 %cond, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xusb_exit_elpg.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_xusb_exit_elpg, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !452

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xusb_exit_elpg.__UNIQUE_ID_ddebug305, ptr noundef %5, ptr noundef nonnull @.str.202) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %cond.end
  %10 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tegra, align 4
  %call.i196 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 22
  %12 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %call.i196, ptr %last_busy.i, align 8
  %call11 = tail call fastcc i32 @tegra_xusb_clk_enable(ptr noundef %tegra)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %out.thread, label %if.end18

out.thread:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tegra, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.59, i32 noundef %call11) #13
  br label %do.body119

if.end18:                                         ; preds = %do.end
  %call19 = tail call fastcc i32 @tegra_xusb_unpowergate_partitions(ptr noundef %tegra)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.disable_clks_crit_edge

if.end18.disable_clks_crit_edge:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_clks

if.end22:                                         ; preds = %if.end18
  br i1 %tobool3.not, label %if.end22.if.end25_crit_edge, label %if.then24

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then24:                                        ; preds = %if.end22
  %padctl1.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 11
  %15 = ptrtoint ptr %padctl1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %padctl1.i, align 4
  %num_phys.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 27
  %17 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_phys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp10.not.i = icmp eq i32 %18, 0
  br i1 %cmp10.not.i, label %if.then24.if.end25_crit_edge, label %for.body.lr.ph.i

if.then24.if.end25_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

for.body.lr.ph.i:                                 ; preds = %if.then24
  %phys.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 26
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phys.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %20, i32 %i.011.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i197 = icmp eq ptr %22, null
  br i1 %tobool.not.i197, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i198 = tail call i32 @tegra_xusb_padctl_disable_phy_wake(ptr noundef %16, ptr noundef nonnull %22) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.011.i, 1
  %23 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_phys.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %24
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end25_crit_edge

for.inc.i.if.end25_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end25:                                         ; preds = %for.inc.i.if.end25_crit_edge, %if.then24.if.end25_crit_edge, %if.end22.if.end25_crit_edge
  %num_phys = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 27
  %25 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp26229.not = icmp eq i32 %26, 0
  br i1 %cmp26229.not, label %if.end25.for.end_crit_edge, label %for.body.lr.ph

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end25
  %phys = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0230 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %27 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phys, align 4
  %arrayidx = getelementptr ptr, ptr %28, i32 %i.0230
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %tobool28.not = icmp eq ptr %30, null
  br i1 %tobool28.not, label %for.body.for.inc_crit_edge, label %if.end30

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end30:                                         ; preds = %for.body
  br i1 %tobool3.not, label %if.then32, label %if.end30.if.end36_crit_edge

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %call35 = tail call i32 @phy_init(ptr noundef nonnull %30) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end30.if.end36_crit_edge
  %31 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phys, align 4
  %arrayidx38 = getelementptr ptr, ptr %32, i32 %i.0230
  %33 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx38, align 4
  %call39 = tail call i32 @phy_power_on(ptr noundef %34) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end36, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0230, 1
  %35 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_phys, align 4
  %cmp26 = icmp ult i32 %inc, %36
  br i1 %cmp26, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end25.for.end_crit_edge
  tail call fastcc void @tegra_xusb_config(ptr noundef %tegra)
  %soc1.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 9
  %37 = ptrtoint ptr %soc1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %soc1.i, align 4
  %context.i = getelementptr inbounds %struct.tegra_xusb_soc, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %context.i, align 4
  %context2.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 37
  %fpci.i = getelementptr inbounds %struct.tegra_xusb_context_soc, ptr %40, i32 0, i32 1
  %num_offsets.i = getelementptr inbounds %struct.tegra_xusb_context_soc, ptr %40, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %num_offsets.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_offsets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.not.i = icmp eq i32 %42, 0
  br i1 %cmp.not.i, label %for.end.if.end.i204_crit_edge, label %for.body.lr.ph.i199

for.end.if.end.i204_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i204

for.body.lr.ph.i199:                              ; preds = %for.end
  %fpci6.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 37, i32 1
  %fpci_base.i.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 8
  br label %for.body.i202

for.body.i202:                                    ; preds = %for.body.i202.for.body.i202_crit_edge, %for.body.lr.ph.i199
  %i.044.i = phi i32 [ 0, %for.body.lr.ph.i199 ], [ %inc.i201, %for.body.i202.for.body.i202_crit_edge ]
  %43 = ptrtoint ptr %fpci6.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fpci6.i, align 4
  %arrayidx.i200 = getelementptr i32, ptr %44, i32 %i.044.i
  %45 = ptrtoint ptr %arrayidx.i200 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i200, align 4
  %47 = ptrtoint ptr %fpci.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fpci.i, align 4
  %arrayidx8.i = getelementptr i32, ptr %48, i32 %i.044.i
  %49 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx8.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  %51 = tail call i32 @llvm.bswap.i32(i32 %46) #10
  %52 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %51) #10, !srcloc !456
  %inc.i201 = add nuw i32 %i.044.i, 1
  %54 = ptrtoint ptr %num_offsets.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_offsets.i, align 4
  %cmp5.i = icmp ult i32 %inc.i201, %55
  br i1 %cmp5.i, label %for.body.i202.for.body.i202_crit_edge, label %for.body.i202.if.end.i204_crit_edge

for.body.i202.if.end.i204_crit_edge:              ; preds = %for.body.i202
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i204

for.body.i202.for.body.i202_crit_edge:            ; preds = %for.body.i202
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i202

if.end.i204:                                      ; preds = %for.body.i202.if.end.i204_crit_edge, %for.end.if.end.i204_crit_edge
  %num_offsets9.i = getelementptr inbounds %struct.anon.85, ptr %40, i32 0, i32 1
  %56 = ptrtoint ptr %num_offsets9.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_offsets9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp10.not.i203 = icmp eq i32 %57, 0
  br i1 %cmp10.not.i203, label %if.end.i204.tegra_xusb_restore_context.exit_crit_edge, label %for.body16.lr.ph.i

if.end.i204.tegra_xusb_restore_context.exit_crit_edge: ; preds = %if.end.i204
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_xusb_restore_context.exit

for.body16.lr.ph.i:                               ; preds = %if.end.i204
  %ipfs_base.i.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 7
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.body16.lr.ph.i
  %i.146.i = phi i32 [ 0, %for.body16.lr.ph.i ], [ %inc23.i, %for.body16.i.for.body16.i_crit_edge ]
  %58 = ptrtoint ptr %context2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %context2.i, align 4
  %arrayidx18.i = getelementptr i32, ptr %59, i32 %i.146.i
  %60 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx18.i, align 4
  %62 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %40, align 4
  %arrayidx21.i = getelementptr i32, ptr %63, i32 %i.146.i
  %64 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx21.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !455
  tail call void @arm_heavy_mb() #10
  %66 = tail call i32 @llvm.bswap.i32(i32 %61) #10
  %67 = ptrtoint ptr %ipfs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ipfs_base.i.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %68, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 %66) #10, !srcloc !456
  %inc23.i = add nuw i32 %i.146.i, 1
  %69 = ptrtoint ptr %num_offsets9.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_offsets9.i, align 4
  %cmp15.i = icmp ult i32 %inc23.i, %70
  br i1 %cmp15.i, label %for.body16.i.for.body16.i_crit_edge, label %for.body16.i.tegra_xusb_restore_context.exit_crit_edge

for.body16.i.tegra_xusb_restore_context.exit_crit_edge: ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_xusb_restore_context.exit

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16.i

tegra_xusb_restore_context.exit:                  ; preds = %for.body16.i.tegra_xusb_restore_context.exit_crit_edge, %if.end.i204.tegra_xusb_restore_context.exit_crit_edge
  %call40 = tail call fastcc i32 @tegra_xusb_load_firmware(ptr noundef %tegra)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.end46, label %if.end48

do.end46:                                         ; preds = %tegra_xusb_restore_context.exit
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tegra, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.74, i32 noundef %call40) #13
  br label %disable_phy

if.end48:                                         ; preds = %tegra_xusb_restore_context.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i) #10
  %73 = getelementptr inbounds %struct.tegra_xusb_mbox_msg, ptr %msg.i, i32 0, i32 1
  %74 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %msg.i, align 4
  %75 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %73, align 4
  %call.i205 = call fastcc i32 @tegra_xusb_mbox_send(ptr noundef %tegra, ptr noundef nonnull %msg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %cmp.i206 = icmp slt i32 %call.i205, 0
  br i1 %cmp.i206, label %do.end55, label %if.end57

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tegra, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.92, i32 noundef %call.i205) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i) #10
  %78 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tegra, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.92, i32 noundef %call.i205) #13
  br label %disable_phy

if.end57:                                         ; preds = %if.end48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i) #10
  br i1 %tobool3.not, label %if.end57.if.end60_crit_edge, label %if.then59

if.end57.if.end60_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then59:                                        ; preds = %if.end57
  %padctl1.i208 = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 11
  %80 = ptrtoint ptr %padctl1.i208 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %padctl1.i208, align 4
  %82 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp10.not.i210 = icmp eq i32 %83, 0
  br i1 %cmp10.not.i210, label %if.then59.if.end60_crit_edge, label %for.body.lr.ph.i212

if.then59.if.end60_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

for.body.lr.ph.i212:                              ; preds = %if.then59
  %phys.i211 = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 26
  br label %for.body.i216

for.body.i216:                                    ; preds = %for.inc.i221.for.body.i216_crit_edge, %for.body.lr.ph.i212
  %i.011.i213 = phi i32 [ 0, %for.body.lr.ph.i212 ], [ %inc.i219, %for.inc.i221.for.body.i216_crit_edge ]
  %84 = ptrtoint ptr %phys.i211 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %phys.i211, align 4
  %arrayidx.i214 = getelementptr ptr, ptr %85, i32 %i.011.i213
  %86 = ptrtoint ptr %arrayidx.i214 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i214, align 4
  %tobool.not.i215 = icmp eq ptr %87, null
  br i1 %tobool.not.i215, label %for.body.i216.for.inc.i221_crit_edge, label %if.end.i218

for.body.i216.for.inc.i221_crit_edge:             ; preds = %for.body.i216
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i221

if.end.i218:                                      ; preds = %for.body.i216
  call void @__sanitizer_cov_trace_pc() #12
  %call.i217 = tail call i32 @tegra_xusb_padctl_disable_phy_sleepwalk(ptr noundef %81, ptr noundef nonnull %87) #10
  br label %for.inc.i221

for.inc.i221:                                     ; preds = %if.end.i218, %for.body.i216.for.inc.i221_crit_edge
  %inc.i219 = add nuw i32 %i.011.i213, 1
  %88 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_phys, align 4
  %cmp.i220 = icmp ult i32 %inc.i219, %89
  br i1 %cmp.i220, label %for.inc.i221.for.body.i216_crit_edge, label %for.inc.i221.if.end60_crit_edge

for.inc.i221.if.end60_crit_edge:                  ; preds = %for.inc.i221
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

for.inc.i221.for.body.i216_crit_edge:             ; preds = %for.inc.i221
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i216

if.end60:                                         ; preds = %for.inc.i221.if.end60_crit_edge, %if.then59.if.end60_crit_edge, %if.end57.if.end60_crit_edge
  %call61 = tail call i32 @xhci_resume(ptr noundef %hcd_priv.i, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %do.end67, label %if.end69

do.end67:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tegra, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.208, i32 noundef %call61) #13
  br label %disable_phy

if.end69:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %op_regs = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 3
  %92 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %op_regs, align 4
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #10, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !462
  %95 = or i32 %94, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !463
  tail call void @arm_heavy_mb() #10
  %96 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %op_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %95) #10, !srcloc !456
  br label %out

disable_phy:                                      ; preds = %do.end67, %do.end55, %do.end46
  %err.0 = phi i32 [ %call40, %do.end46 ], [ %call.i205, %do.end55 ], [ %call61, %do.end67 ]
  %98 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp80232.not = icmp eq i32 %99, 0
  br i1 %cmp80232.not, label %disable_phy.for.end99_crit_edge, label %for.body82.lr.ph

disable_phy.for.end99_crit_edge:                  ; preds = %disable_phy
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end99

for.body82.lr.ph:                                 ; preds = %disable_phy
  %phys83 = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 26
  br label %for.body82

for.body82:                                       ; preds = %for.inc97.for.body82_crit_edge, %for.body82.lr.ph
  %i.1233 = phi i32 [ 0, %for.body82.lr.ph ], [ %inc98, %for.inc97.for.body82_crit_edge ]
  %100 = ptrtoint ptr %phys83 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %phys83, align 4
  %arrayidx84 = getelementptr ptr, ptr %101, i32 %i.1233
  %102 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx84, align 4
  %tobool85.not = icmp eq ptr %103, null
  br i1 %tobool85.not, label %for.body82.for.inc97_crit_edge, label %if.end87

for.body82.for.inc97_crit_edge:                   ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc97

if.end87:                                         ; preds = %for.body82
  %call90 = tail call i32 @phy_power_off(ptr noundef nonnull %103) #10
  br i1 %tobool3.not, label %if.then92, label %if.end87.for.inc97_crit_edge

if.end87.for.inc97_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc97

if.then92:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %phys83 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %phys83, align 4
  %arrayidx94 = getelementptr ptr, ptr %105, i32 %i.1233
  %106 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx94, align 4
  %call95 = tail call i32 @phy_exit(ptr noundef %107) #10
  br label %for.inc97

for.inc97:                                        ; preds = %if.then92, %if.end87.for.inc97_crit_edge, %for.body82.for.inc97_crit_edge
  %inc98 = add nuw i32 %i.1233, 1
  %108 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_phys, align 4
  %cmp80 = icmp ult i32 %inc98, %109
  br i1 %cmp80, label %for.inc97.for.body82_crit_edge, label %for.inc97.for.end99_crit_edge

for.inc97.for.end99_crit_edge:                    ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end99

for.inc97.for.body82_crit_edge:                   ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body82

for.end99:                                        ; preds = %for.inc97.for.end99_crit_edge, %disable_phy.for.end99_crit_edge
  tail call fastcc void @tegra_xusb_powergate_partitions(ptr noundef %tegra)
  br label %disable_clks

disable_clks:                                     ; preds = %for.end99, %if.end18.disable_clks_crit_edge
  %err.1 = phi i32 [ %call19, %if.end18.disable_clks_crit_edge ], [ %err.0, %for.end99 ]
  tail call fastcc void @tegra_xusb_clk_disable(ptr noundef %tegra)
  br label %out

out:                                              ; preds = %disable_clks, %if.end69
  %err.2 = phi i32 [ %err.1, %disable_clks ], [ %call61, %if.end69 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool101.not = icmp eq i32 %err.2, 0
  br i1 %tobool101.not, label %do.body103, label %out.do.body119_crit_edge

out.do.body119_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body119

do.body103:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xusb_exit_elpg.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_xusb_exit_elpg, %if.then115)) #10
          to label %if.end135 [label %if.then115], !srcloc !452

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xusb_exit_elpg.__UNIQUE_ID_ddebug306, ptr noundef %5, ptr noundef nonnull @.str.210) #10
  br label %if.end135

do.body119:                                       ; preds = %out.do.body119_crit_edge, %out.thread
  %err.2226 = phi i32 [ %call11, %out.thread ], [ %err.2, %out.do.body119_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xusb_exit_elpg.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_xusb_exit_elpg, %if.then131)) #10
          to label %if.end135 [label %if.then131], !srcloc !452

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xusb_exit_elpg.__UNIQUE_ID_ddebug307, ptr noundef %5, ptr noundef nonnull @.str.211) #10
  br label %if.end135

if.end135:                                        ; preds = %if.then131, %do.body119, %if.then115, %do.body103
  %err.2225 = phi i32 [ %err.2226, %if.then131 ], [ 0, %if.then115 ], [ 0, %do.body103 ], [ %err.2226, %do.body119 ]
  ret i32 %err.2225
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_enter_elpg(ptr noundef readonly %tegra, i1 noundef zeroext %runtime) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 2
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %3, %if.else.i ], [ %1, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %4 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tegra, align 4
  br i1 %runtime, label %hcd_to_xhci.exit.cond.end_crit_edge, label %cond.false

hcd_to_xhci.exit.cond.end_crit_edge:              ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %hcd_to_xhci.exit
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i144 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i144, label %cond.false.cond.end_crit_edge, label %land.rhs.i

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

land.rhs.i:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  %wakeup.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %8, null
  br label %cond.end

cond.end:                                         ; preds = %land.rhs.i, %cond.false.cond.end_crit_edge, %hcd_to_xhci.exit.cond.end_crit_edge
  %cond = phi i1 [ true, %hcd_to_xhci.exit.cond.end_crit_edge ], [ false, %cond.false.cond.end_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xusb_enter_elpg.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_xusb_enter_elpg, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !452

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xusb_enter_elpg.__UNIQUE_ID_ddebug302, ptr noundef %5, ptr noundef nonnull @.str.213) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %cond.end
  %op_regs = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %op_regs, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !464
  %12 = and i32 %11, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !465
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %op_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #10, !srcloc !456
  %15 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hcd, align 4
  %call.i.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.end.hcd_to_xhci.exit.i_crit_edge

do.end.hcd_to_xhci.exit.i_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %hcd_to_xhci.exit.i

if.else.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %primary_hcd1.i.i = getelementptr inbounds %struct.usb_hcd, ptr %16, i32 0, i32 25
  %17 = ptrtoint ptr %primary_hcd1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %primary_hcd1.i.i, align 8
  br label %hcd_to_xhci.exit.i

hcd_to_xhci.exit.i:                               ; preds = %if.else.i.i, %do.end.hcd_to_xhci.exit.i_crit_edge
  %primary_hcd.0.i.i = phi ptr [ %18, %if.else.i.i ], [ %16, %do.end.hcd_to_xhci.exit.i_crit_edge ]
  %usb2_rhub.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 3, i32 16
  %bus_state1.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 3, i32 19
  %19 = ptrtoint ptr %bus_state1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bus_state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i145 = icmp eq i32 %20, 0
  br i1 %tobool.not.i145, label %hcd_to_xhci.exit.i.do.body2.i_crit_edge, label %if.then.i

hcd_to_xhci.exit.i.do.body2.i_crit_edge:          ; preds = %hcd_to_xhci.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

if.then.i:                                        ; preds = %hcd_to_xhci.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #10
  br label %do.body2.i

do.body2.i:                                       ; preds = %if.then.i, %hcd_to_xhci.exit.i.do.body2.i_crit_edge
  %lock.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 1, i32 0, i32 9, i32 1, i32 4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %hcd.i.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 3, i32 18
  %21 = ptrtoint ptr %hcd.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hcd.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %num_ports.i.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 3, i32 17
  %25 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_ports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp19.not.i.i = icmp eq i32 %26, 0
  br i1 %cmp19.not.i.i, label %do.body2.i.lor.lhs.false.i_crit_edge, label %do.body2.i.for.body.i.outer.i_crit_edge

do.body2.i.for.body.i.outer.i_crit_edge:          ; preds = %do.body2.i
  br label %for.body.i.outer.i

do.body2.i.lor.lhs.false.i_crit_edge:             ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

for.body.i.outer.i:                               ; preds = %for.inc.i.thread.i.for.body.i.outer.i_crit_edge, %do.body2.i.for.body.i.outer.i_crit_edge
  %status.0.off021.i.ph.i = phi i1 [ false, %for.inc.i.thread.i.for.body.i.outer.i_crit_edge ], [ true, %do.body2.i.for.body.i.outer.i_crit_edge ]
  %i.020.i.ph.i = phi i32 [ %add.i.i, %for.inc.i.thread.i.for.body.i.outer.i_crit_edge ], [ 0, %do.body2.i.for.body.i.outer.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.outer.i
  %i.020.i.i = phi i32 [ %.pre.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %i.020.i.ph.i, %for.body.i.outer.i ]
  %27 = ptrtoint ptr %usb2_rhub.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb2_rhub.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %28, i32 %i.020.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #10, !srcloc !453
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !466
  %and.i.i = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp2.i.i = icmp eq i32 %and.i.i, 0
  %and3.i.i = and i32 %34, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and3.i.i)
  %cmp4.not.i.i = icmp eq i32 %and3.i.i, 96
  %or.cond.i.i = or i1 %cmp2.i.i, %cmp4.not.i.i
  br i1 %or.cond.i.i, label %for.inc.i.i, label %for.inc.i.thread.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %.pre.i.i = add nuw i32 %i.020.i.i, 1
  %35 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_ports.i.i, align 4
  %cmp.i.i = icmp ult i32 %.pre.i.i, %36
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %xhci_hub_ports_suspended.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.thread.i:                               ; preds = %for.body.i.i
  %37 = ptrtoint ptr %hcd.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hcd.i.i, align 4
  %busnum.i.i = getelementptr inbounds %struct.usb_bus, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %busnum.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %busnum.i.i, align 8
  %add.i.i = add nuw i32 %i.020.i.i, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.220, i32 noundef %40, i32 noundef %add.i.i, i32 noundef %34) #13
  %41 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_ports.i.i, align 4
  %cmp.i44.i = icmp ult i32 %add.i.i, %42
  br i1 %cmp.i44.i, label %for.inc.i.thread.i.for.body.i.outer.i_crit_edge, label %for.inc.i.thread.i.do.end23_crit_edge

for.inc.i.thread.i.do.end23_crit_edge:            ; preds = %for.inc.i.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

for.inc.i.thread.i.for.body.i.outer.i_crit_edge:  ; preds = %for.inc.i.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.outer.i

xhci_hub_ports_suspended.exit.i:                  ; preds = %for.inc.i.i
  br i1 %status.0.off021.i.ph.i, label %xhci_hub_ports_suspended.exit.i.lor.lhs.false.i_crit_edge, label %xhci_hub_ports_suspended.exit.i.do.end23_crit_edge

xhci_hub_ports_suspended.exit.i.do.end23_crit_edge: ; preds = %xhci_hub_ports_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

xhci_hub_ports_suspended.exit.i.lor.lhs.false.i_crit_edge: ; preds = %xhci_hub_ports_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %xhci_hub_ports_suspended.exit.i.lor.lhs.false.i_crit_edge, %do.body2.i.lor.lhs.false.i_crit_edge
  %usb3_rhub.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 9, i32 20, i32 1, i32 0, i32 0, i32 4, i32 1
  %hcd.i17.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 9, i32 20, i32 1, i32 0, i32 0, i32 4, i32 2
  %43 = ptrtoint ptr %hcd.i17.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hcd.i17.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %num_ports.i18.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 9, i32 20, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %47 = ptrtoint ptr %num_ports.i18.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_ports.i18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp19.not.i19.i = icmp eq i32 %48, 0
  br i1 %cmp19.not.i19.i, label %lor.lhs.false.i.if.end25_crit_edge, label %lor.lhs.false.i.for.body.i28.outer.i_crit_edge

lor.lhs.false.i.for.body.i28.outer.i_crit_edge:   ; preds = %lor.lhs.false.i
  br label %for.body.i28.outer.i

lor.lhs.false.i.if.end25_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

for.body.i28.outer.i:                             ; preds = %for.inc.i37.thread.i.for.body.i28.outer.i_crit_edge, %lor.lhs.false.i.for.body.i28.outer.i_crit_edge
  %status.0.off021.i20.ph.i = phi i1 [ false, %for.inc.i37.thread.i.for.body.i28.outer.i_crit_edge ], [ true, %lor.lhs.false.i.for.body.i28.outer.i_crit_edge ]
  %i.020.i21.ph.i = phi i32 [ %add.i32.i, %for.inc.i37.thread.i.for.body.i28.outer.i_crit_edge ], [ 0, %lor.lhs.false.i.for.body.i28.outer.i_crit_edge ]
  br label %for.body.i28.i

for.body.i28.i:                                   ; preds = %for.inc.i37.i.for.body.i28.i_crit_edge, %for.body.i28.outer.i
  %i.020.i21.i = phi i32 [ %.pre.i29.i, %for.inc.i37.i.for.body.i28.i_crit_edge ], [ %i.020.i21.ph.i, %for.body.i28.outer.i ]
  %49 = ptrtoint ptr %usb3_rhub.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %usb3_rhub.i, align 4
  %arrayidx.i22.i = getelementptr ptr, ptr %50, i32 %i.020.i21.i
  %51 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i22.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #10, !srcloc !453
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !466
  %and.i23.i = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23.i)
  %cmp2.i24.i = icmp eq i32 %and.i23.i, 0
  %and3.i25.i = and i32 %56, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and3.i25.i)
  %cmp4.not.i26.i = icmp eq i32 %and3.i25.i, 96
  %or.cond.i27.i = or i1 %cmp2.i24.i, %cmp4.not.i26.i
  br i1 %or.cond.i27.i, label %for.inc.i37.i, label %for.inc.i37.thread.i

for.inc.i37.i:                                    ; preds = %for.body.i28.i
  %.pre.i29.i = add nuw i32 %i.020.i21.i, 1
  %57 = ptrtoint ptr %num_ports.i18.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_ports.i18.i, align 4
  %cmp.i36.i = icmp ult i32 %.pre.i29.i, %58
  br i1 %cmp.i36.i, label %for.inc.i37.i.for.body.i28.i_crit_edge, label %xhci_hub_ports_suspended.exit39.i

for.inc.i37.i.for.body.i28.i_crit_edge:           ; preds = %for.inc.i37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i28.i

for.inc.i37.thread.i:                             ; preds = %for.body.i28.i
  %59 = ptrtoint ptr %hcd.i17.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hcd.i17.i, align 4
  %busnum.i31.i = getelementptr inbounds %struct.usb_bus, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %busnum.i31.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %busnum.i31.i, align 8
  %add.i32.i = add nuw i32 %i.020.i21.i, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.220, i32 noundef %62, i32 noundef %add.i32.i, i32 noundef %56) #13
  %63 = ptrtoint ptr %num_ports.i18.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_ports.i18.i, align 4
  %cmp.i3649.i = icmp ult i32 %add.i32.i, %64
  br i1 %cmp.i3649.i, label %for.inc.i37.thread.i.for.body.i28.outer.i_crit_edge, label %for.inc.i37.thread.i.do.end23_crit_edge

for.inc.i37.thread.i.do.end23_crit_edge:          ; preds = %for.inc.i37.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

for.inc.i37.thread.i.for.body.i28.outer.i_crit_edge: ; preds = %for.inc.i37.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i28.outer.i

xhci_hub_ports_suspended.exit39.i:                ; preds = %for.inc.i37.i
  br i1 %status.0.off021.i20.ph.i, label %xhci_hub_ports_suspended.exit39.i.if.end25_crit_edge, label %xhci_hub_ports_suspended.exit39.i.do.end23_crit_edge

xhci_hub_ports_suspended.exit39.i.do.end23_crit_edge: ; preds = %xhci_hub_ports_suspended.exit39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

xhci_hub_ports_suspended.exit39.i.if.end25_crit_edge: ; preds = %xhci_hub_ports_suspended.exit39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.end23:                                         ; preds = %xhci_hub_ports_suspended.exit39.i.do.end23_crit_edge, %for.inc.i37.thread.i.do.end23_crit_edge, %xhci_hub_ports_suspended.exit.i.do.end23_crit_edge, %for.inc.i.thread.i.do.end23_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #10
  %65 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tegra, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.214, i32 noundef -16) #13
  br label %if.else

if.end25:                                         ; preds = %xhci_hub_ports_suspended.exit39.i.if.end25_crit_edge, %lor.lhs.false.i.if.end25_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #10
  %call27 = tail call i32 @xhci_suspend(ptr noundef %hcd_priv.i, i1 noundef zeroext %cond) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end33, label %if.end35

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tegra, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.216, i32 noundef %call27) #13
  br label %if.else

if.end35:                                         ; preds = %if.end25
  %soc1.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 9
  %69 = ptrtoint ptr %soc1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %soc1.i, align 4
  %context.i = getelementptr inbounds %struct.tegra_xusb_soc, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %context.i, align 4
  %context2.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 37
  %num_offsets.i = getelementptr inbounds %struct.anon.85, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %num_offsets.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_offsets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.not.i = icmp eq i32 %74, 0
  br i1 %cmp.not.i, label %if.end35.if.end.i_crit_edge, label %for.body.lr.ph.i

if.end35.if.end.i_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.lr.ph.i:                                 ; preds = %if.end35
  %ipfs_base.i.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.045.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %72, align 4
  %arrayidx.i = getelementptr i32, ptr %76, i32 %i.045.i
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i, align 4
  %79 = ptrtoint ptr %ipfs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ipfs_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %80, i32 %78
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !453
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !454
  %83 = ptrtoint ptr %context2.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %context2.i, align 4
  %arrayidx8.i = getelementptr i32, ptr %84, i32 %i.045.i
  %85 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %82, ptr %arrayidx8.i, align 4
  %inc.i = add nuw i32 %i.045.i, 1
  %86 = ptrtoint ptr %num_offsets.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_offsets.i, align 4
  %cmp5.i = icmp ult i32 %inc.i, %87
  br i1 %cmp5.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %if.end35.if.end.i_crit_edge
  %fpci.i = getelementptr inbounds %struct.tegra_xusb_context_soc, ptr %72, i32 0, i32 1
  %num_offsets9.i = getelementptr inbounds %struct.tegra_xusb_context_soc, ptr %72, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %num_offsets9.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_offsets9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp10.not.i = icmp eq i32 %89, 0
  br i1 %cmp10.not.i, label %if.end.i.tegra_xusb_save_context.exit_crit_edge, label %for.body16.lr.ph.i

if.end.i.tegra_xusb_save_context.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_xusb_save_context.exit

for.body16.lr.ph.i:                               ; preds = %if.end.i
  %fpci_base.i.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 8
  %fpci21.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 37, i32 1
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.body16.lr.ph.i
  %i.147.i = phi i32 [ 0, %for.body16.lr.ph.i ], [ %inc24.i, %for.body16.i.for.body16.i_crit_edge ]
  %90 = ptrtoint ptr %fpci.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fpci.i, align 4
  %arrayidx19.i = getelementptr i32, ptr %91, i32 %i.147.i
  %92 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx19.i, align 4
  %94 = ptrtoint ptr %fpci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fpci_base.i.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %95, i32 %93
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i) #10, !srcloc !453
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  %98 = ptrtoint ptr %fpci21.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %fpci21.i, align 4
  %arrayidx22.i = getelementptr i32, ptr %99, i32 %i.147.i
  %100 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %97, ptr %arrayidx22.i, align 4
  %inc24.i = add nuw i32 %i.147.i, 1
  %101 = ptrtoint ptr %num_offsets9.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_offsets9.i, align 4
  %cmp15.i = icmp ult i32 %inc24.i, %102
  br i1 %cmp15.i, label %for.body16.i.for.body16.i_crit_edge, label %for.body16.i.tegra_xusb_save_context.exit_crit_edge

for.body16.i.tegra_xusb_save_context.exit_crit_edge: ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_xusb_save_context.exit

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16.i

tegra_xusb_save_context.exit:                     ; preds = %for.body16.i.tegra_xusb_save_context.exit_crit_edge, %if.end.i.tegra_xusb_save_context.exit_crit_edge
  br i1 %cond, label %if.then37, label %tegra_xusb_save_context.exit.if.end38_crit_edge

tegra_xusb_save_context.exit.if.end38_crit_edge:  ; preds = %tegra_xusb_save_context.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then37:                                        ; preds = %tegra_xusb_save_context.exit
  %padctl1.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 11
  %103 = ptrtoint ptr %padctl1.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %padctl1.i, align 4
  %105 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hcd, align 4
  %call.i.i147 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %106) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i147)
  %tobool.not.i.i148 = icmp eq i32 %call.i.i147, 0
  br i1 %tobool.not.i.i148, label %if.else.i.i150, label %if.then37.hcd_to_xhci.exit.i152_crit_edge

if.then37.hcd_to_xhci.exit.i152_crit_edge:        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %hcd_to_xhci.exit.i152

if.else.i.i150:                                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %primary_hcd1.i.i149 = getelementptr inbounds %struct.usb_hcd, ptr %106, i32 0, i32 25
  %107 = ptrtoint ptr %primary_hcd1.i.i149 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %primary_hcd1.i.i149, align 8
  br label %hcd_to_xhci.exit.i152

hcd_to_xhci.exit.i152:                            ; preds = %if.else.i.i150, %if.then37.hcd_to_xhci.exit.i152_crit_edge
  %primary_hcd.0.i.i151 = phi ptr [ %108, %if.else.i.i150 ], [ %106, %if.then37.hcd_to_xhci.exit.i152_crit_edge ]
  %109 = ptrtoint ptr %soc1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %soc1.i, align 4
  %num_types80.i = getelementptr inbounds %struct.tegra_xusb_soc, ptr %110, i32 0, i32 4
  %111 = ptrtoint ptr %num_types80.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %num_types80.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp81.not.i = icmp eq i32 %112, 0
  br i1 %cmp81.not.i, label %hcd_to_xhci.exit.i152.if.end38_crit_edge, label %for.body.lr.ph.i155

hcd_to_xhci.exit.i152.if.end38_crit_edge:         ; preds = %hcd_to_xhci.exit.i152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

for.body.lr.ph.i155:                              ; preds = %hcd_to_xhci.exit.i152
  %usb3_rhub.i153 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i151, i32 9, i32 20, i32 1, i32 0, i32 0, i32 4, i32 1
  %usb2_rhub.i154 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i151, i32 3, i32 16
  %phys.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 26
  %num_usb_phys.i.i.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 29
  %usbphy.i.i.i.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 28
  %otg_usb3_port.i.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 31
  %otg_usb2_port.i.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 30
  %host_mode23.i.i = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 32
  br label %for.body.i157

for.body.i157:                                    ; preds = %for.inc38.i.for.body.i157_crit_edge, %for.body.lr.ph.i155
  %113 = phi ptr [ %110, %for.body.lr.ph.i155 ], [ %171, %for.inc38.i.for.body.i157_crit_edge ]
  %k.084.i = phi i32 [ 0, %for.body.lr.ph.i155 ], [ %k.1.lcssa.i, %for.inc38.i.for.body.i157_crit_edge ]
  %i.082.i = phi i32 [ 0, %for.body.lr.ph.i155 ], [ %inc39.i, %for.inc38.i.for.body.i157_crit_edge ]
  %phy_types.i = getelementptr inbounds %struct.tegra_xusb_soc, ptr %113, i32 0, i32 3
  %114 = ptrtoint ptr %phy_types.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %phy_types.i, align 4
  %arrayidx.i156 = getelementptr %struct.tegra_xusb_phy_type, ptr %115, i32 %i.082.i
  %116 = ptrtoint ptr %arrayidx.i156 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i156, align 4
  %call3.i = tail call i32 @strcmp(ptr noundef %117, ptr noundef nonnull dereferenceable(5) @.str.193) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, 0
  %rhub.0.i = select i1 %cmp4.i, ptr %usb3_rhub.i153, ptr %usb2_rhub.i154
  %call9.i = tail call i32 @strcmp(ptr noundef %117, ptr noundef nonnull dereferenceable(5) @.str.194) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp eq i32 %call9.i, 0
  br i1 %cmp10.i, label %if.then11.i, label %for.body.i157.if.end14.i_crit_edge

for.body.i157.if.end14.i_crit_edge:               ; preds = %for.body.i157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then11.i:                                      ; preds = %for.body.i157
  call void @__sanitizer_cov_trace_pc() #12
  %count.i = getelementptr inbounds %struct.tegra_xusb_soc, ptr %113, i32 0, i32 6, i32 0, i32 1
  %118 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %count.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %for.body.i157.if.end14.i_crit_edge
  %offset.0.i = phi i32 [ %119, %if.then11.i ], [ 0, %for.body.i157.if.end14.i_crit_edge ]
  %120 = ptrtoint ptr %soc1.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %soc1.i, align 4
  %phy_types1772.i = getelementptr inbounds %struct.tegra_xusb_soc, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %phy_types1772.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %phy_types1772.i, align 4
  %num73.i = getelementptr %struct.tegra_xusb_phy_type, ptr %123, i32 %i.082.i, i32 1
  %124 = ptrtoint ptr %num73.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %num73.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp1974.not.i = icmp eq i32 %125, 0
  br i1 %cmp1974.not.i, label %if.end14.i.for.inc38.i_crit_edge, label %for.body20.lr.ph.i

if.end14.i.for.inc38.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc38.i

for.body20.lr.ph.i:                               ; preds = %if.end14.i
  %num_ports.i = getelementptr inbounds %struct.xhci_hub, ptr %rhub.0.i, i32 0, i32 1
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.inc.i.for.body20.i_crit_edge, %for.body20.lr.ph.i
  %126 = phi ptr [ %123, %for.body20.lr.ph.i ], [ %167, %for.inc.i.for.body20.i_crit_edge ]
  %k.179.i = phi i32 [ %k.084.i, %for.body20.lr.ph.i ], [ %inc.i158, %for.inc.i.for.body20.i_crit_edge ]
  %j.075.i = phi i32 [ 0, %for.body20.lr.ph.i ], [ %inc37.i, %for.inc.i.for.body20.i_crit_edge ]
  %127 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %phys.i, align 4
  %inc.i158 = add i32 %k.179.i, 1
  %arrayidx21.i = getelementptr ptr, ptr %128, i32 %k.179.i
  %129 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx21.i, align 4
  %tobool.not.i159 = icmp eq ptr %130, null
  br i1 %tobool.not.i159, label %for.body20.i.for.inc.i_crit_edge, label %if.end23.i

for.body20.i.for.inc.i_crit_edge:                 ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end23.i:                                       ; preds = %for.body20.i
  %add.i = add i32 %j.075.i, %offset.0.i
  %131 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %132)
  %cmp24.not.i = icmp ult i32 %add.i, %132
  br i1 %cmp24.not.i, label %if.end26.i, label %if.end23.i.for.inc.i_crit_edge

if.end23.i.for.inc.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end26.i:                                       ; preds = %if.end23.i
  %arrayidx.i.i160 = getelementptr %struct.tegra_xusb_phy_type, ptr %126, i32 %i.082.i
  %133 = ptrtoint ptr %arrayidx.i.i160 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx.i.i160, align 4
  %call.i64.i = tail call i32 @strcmp(ptr noundef %134, ptr noundef nonnull dereferenceable(5) @.str.194) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64.i)
  %cmp.i.i161 = icmp eq i32 %call.i64.i, 0
  br i1 %cmp.i.i161, label %if.end26.i.if.end29.i_crit_edge, label %if.end.i.i

if.end26.i.if.end29.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.end.i.i:                                       ; preds = %if.end26.i
  %call5.i.i = tail call i32 @strcmp(ptr noundef %134, ptr noundef nonnull dereferenceable(5) @.str.53) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp6.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.end11.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  %135 = ptrtoint ptr %usbphy.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %usbphy.i.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %136, i32 %j.075.i
  %137 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %138, null
  br i1 %cmp.i.not.i.i, label %if.then7.i.i.if.end29.i_crit_edge, label %if.then9.i.i

if.then7.i.i.if.end29.i_crit_edge:                ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then9.i.i:                                     ; preds = %if.then7.i.i
  %139 = ptrtoint ptr %otg_usb2_port.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %otg_usb2_port.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %j.075.i)
  %cmp10.i.i = icmp eq i32 %140, %j.075.i
  br i1 %cmp10.i.i, label %if.then9.i.i.is_host_mode_phy.exit.i_crit_edge, label %if.then9.i.i.for.inc.i_crit_edge

if.then9.i.i.for.inc.i_crit_edge:                 ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then9.i.i.is_host_mode_phy.exit.i_crit_edge:   ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_host_mode_phy.exit.i

if.end11.i.i:                                     ; preds = %if.end.i.i
  %call16.i.i = tail call i32 @strcmp(ptr noundef %134, ptr noundef nonnull dereferenceable(5) @.str.193) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %cmp17.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %cmp17.i.i, label %if.then18.i.i, label %if.end11.i.i.for.inc.i_crit_edge

if.end11.i.i.for.inc.i_crit_edge:                 ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then18.i.i:                                    ; preds = %if.end11.i.i
  %141 = ptrtoint ptr %padctl1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %padctl1.i, align 4
  %143 = ptrtoint ptr %num_usb_phys.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %num_usb_phys.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp15.not.i.i.i = icmp eq i32 %144, 0
  br i1 %cmp15.not.i.i.i, label %if.then18.i.i.if.end29.i_crit_edge, label %if.then18.i.i.for.body.i.i.i_crit_edge

if.then18.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.then18.i.i
  br label %for.body.i.i.i

if.then18.i.i.if.end29.i_crit_edge:               ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then18.i.i.for.body.i.i.i_crit_edge
  %i.016.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then18.i.i.for.body.i.i.i_crit_edge ]
  %145 = ptrtoint ptr %usbphy.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %usbphy.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr ptr, ptr %146, i32 %i.016.i.i.i
  %147 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %148, null
  br i1 %cmp.i.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  %call2.i.i.i = tail call i32 @tegra_xusb_padctl_get_usb3_companion(ptr noundef %142, i32 noundef %i.016.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i.i)
  %cmp3.i.i.i = icmp sgt i32 %call2.i.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i.i.i, i32 %j.075.i)
  %cmp4.i.i.i = icmp eq i32 %call2.i.i.i, %j.075.i
  %or.cond.i.i.i = and i1 %cmp3.i.i.i, %cmp4.i.i.i
  br i1 %or.cond.i.i.i, label %if.then20.i.i, label %if.then.i.i.i.for.inc.i.i.i_crit_edge

if.then.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.016.i.i.i, 1
  %149 = ptrtoint ptr %num_usb_phys.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %num_usb_phys.i.i.i, align 4
  %cmp.i41.i.i = icmp ult i32 %inc.i.i.i, %150
  br i1 %cmp.i41.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.if.end29.i_crit_edge

for.inc.i.i.i.if.end29.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

if.then20.i.i:                                    ; preds = %if.then.i.i.i
  %151 = ptrtoint ptr %otg_usb3_port.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %otg_usb3_port.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %j.075.i)
  %cmp21.i.i = icmp eq i32 %152, %j.075.i
  br i1 %cmp21.i.i, label %if.then20.i.i.is_host_mode_phy.exit.i_crit_edge, label %if.then20.i.i.for.inc.i_crit_edge

if.then20.i.i.for.inc.i_crit_edge:                ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then20.i.i.is_host_mode_phy.exit.i_crit_edge:  ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_host_mode_phy.exit.i

is_host_mode_phy.exit.i:                          ; preds = %if.then20.i.i.is_host_mode_phy.exit.i_crit_edge, %if.then9.i.i.is_host_mode_phy.exit.i_crit_edge
  %153 = ptrtoint ptr %host_mode23.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %host_mode23.i.i, align 4, !range !449
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool24.i.not.i = icmp eq i8 %154, 0
  br i1 %tobool24.i.not.i, label %is_host_mode_phy.exit.i.for.inc.i_crit_edge, label %is_host_mode_phy.exit.i.if.end29.i_crit_edge

is_host_mode_phy.exit.i.if.end29.i_crit_edge:     ; preds = %is_host_mode_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

is_host_mode_phy.exit.i.for.inc.i_crit_edge:      ; preds = %is_host_mode_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end29.i:                                       ; preds = %is_host_mode_phy.exit.i.if.end29.i_crit_edge, %for.inc.i.i.i.if.end29.i_crit_edge, %if.then18.i.i.if.end29.i_crit_edge, %if.then7.i.i.if.end29.i_crit_edge, %if.end26.i.if.end29.i_crit_edge
  %155 = ptrtoint ptr %rhub.0.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rhub.0.i, align 4
  %arrayidx31.i = getelementptr ptr, ptr %156, i32 %add.i
  %157 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx31.i, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #10, !srcloc !453
  %162 = lshr i32 %161, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !467
  %and.i.i162 = and i32 %162, 15360
  %163 = zext i32 %and.i.i162 to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.226)
  switch i32 %and.i.i162, label %if.end8.i.i [
    i32 2048, label %if.end29.i.tegra_xhci_portsc_to_speed.exit.i_crit_edge
    i32 3072, label %if.then3.i.i
    i32 1024, label %if.then7.i65.i
  ]

if.end29.i.tegra_xhci_portsc_to_speed.exit.i_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_xhci_portsc_to_speed.exit.i

if.then3.i.i:                                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_xhci_portsc_to_speed.exit.i

if.then7.i65.i:                                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_xhci_portsc_to_speed.exit.i

if.end8.i.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %and.i.i162)
  %cmp10.i66.i = icmp ugt i32 %and.i.i162, 4095
  %..i.i = select i1 %cmp10.i66.i, i32 5, i32 0
  br label %tegra_xhci_portsc_to_speed.exit.i

tegra_xhci_portsc_to_speed.exit.i:                ; preds = %if.end8.i.i, %if.then7.i65.i, %if.then3.i.i, %if.end29.i.tegra_xhci_portsc_to_speed.exit.i_crit_edge
  %retval.0.i67.i = phi i32 [ 3, %if.then3.i.i ], [ 2, %if.then7.i65.i ], [ 1, %if.end29.i.tegra_xhci_portsc_to_speed.exit.i_crit_edge ], [ %..i.i, %if.end8.i.i ]
  %call35.i = tail call i32 @tegra_xusb_padctl_enable_phy_sleepwalk(ptr noundef %104, ptr noundef nonnull %130, i32 noundef %retval.0.i67.i) #10
  %call36.i = tail call i32 @tegra_xusb_padctl_enable_phy_wake(ptr noundef %104, ptr noundef nonnull %130) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %tegra_xhci_portsc_to_speed.exit.i, %is_host_mode_phy.exit.i.for.inc.i_crit_edge, %if.then20.i.i.for.inc.i_crit_edge, %if.end11.i.i.for.inc.i_crit_edge, %if.then9.i.i.for.inc.i_crit_edge, %if.end23.i.for.inc.i_crit_edge, %for.body20.i.for.inc.i_crit_edge
  %inc37.i = add nuw i32 %j.075.i, 1
  %164 = ptrtoint ptr %soc1.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %soc1.i, align 4
  %phy_types17.i = getelementptr inbounds %struct.tegra_xusb_soc, ptr %165, i32 0, i32 3
  %166 = ptrtoint ptr %phy_types17.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %phy_types17.i, align 4
  %num.i = getelementptr %struct.tegra_xusb_phy_type, ptr %167, i32 %i.082.i, i32 1
  %168 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %num.i, align 4
  %cmp19.i = icmp ult i32 %inc37.i, %169
  br i1 %cmp19.i, label %for.inc.i.for.body20.i_crit_edge, label %for.inc.i.for.inc38.i_crit_edge

for.inc.i.for.inc38.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc38.i

for.inc.i.for.body20.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body20.i

for.inc38.i:                                      ; preds = %for.inc.i.for.inc38.i_crit_edge, %if.end14.i.for.inc38.i_crit_edge
  %k.1.lcssa.i = phi i32 [ %k.084.i, %if.end14.i.for.inc38.i_crit_edge ], [ %inc.i158, %for.inc.i.for.inc38.i_crit_edge ]
  %inc39.i = add nuw i32 %i.082.i, 1
  %170 = ptrtoint ptr %soc1.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %soc1.i, align 4
  %num_types.i = getelementptr inbounds %struct.tegra_xusb_soc, ptr %171, i32 0, i32 4
  %172 = ptrtoint ptr %num_types.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %num_types.i, align 4
  %cmp.i = icmp ult i32 %inc39.i, %173
  br i1 %cmp.i, label %for.inc38.i.for.body.i157_crit_edge, label %for.inc38.i.if.end38_crit_edge

for.inc38.i.if.end38_crit_edge:                   ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

for.inc38.i.for.body.i157_crit_edge:              ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i157

if.end38:                                         ; preds = %for.inc38.i.if.end38_crit_edge, %hcd_to_xhci.exit.i152.if.end38_crit_edge, %tegra_xusb_save_context.exit.if.end38_crit_edge
  tail call fastcc void @tegra_xusb_powergate_partitions(ptr noundef %tegra)
  %num_phys = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 27
  %174 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp40181.not = icmp eq i32 %175, 0
  br i1 %cmp40181.not, label %if.end38.out_crit_edge, label %for.body.lr.ph

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body.lr.ph:                                   ; preds = %if.end38
  %phys = getelementptr inbounds %struct.tegra_xusb, ptr %tegra, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0182 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %176 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %phys, align 4
  %arrayidx = getelementptr ptr, ptr %177, i32 %i.0182
  %178 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx, align 4
  %tobool42.not = icmp eq ptr %179, null
  br i1 %tobool42.not, label %for.body.for.inc_crit_edge, label %if.end44

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end44:                                         ; preds = %for.body
  %call47 = tail call i32 @phy_power_off(ptr noundef nonnull %179) #10
  br i1 %cond, label %if.end44.for.inc_crit_edge, label %if.then49

if.end44.for.inc_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %180 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %phys, align 4
  %arrayidx51 = getelementptr ptr, ptr %181, i32 %i.0182
  %182 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx51, align 4
  %call52 = tail call i32 @phy_exit(ptr noundef %183) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then49, %if.end44.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0182, 1
  %184 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %num_phys, align 4
  %cmp40 = icmp ult i32 %inc, %185
  br i1 %cmp40, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %if.end38.out_crit_edge
  tail call fastcc void @tegra_xusb_clk_disable(ptr noundef %tegra)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool54.not = icmp eq i32 %call27, 0
  br i1 %tobool54.not, label %do.body56, label %out.if.else_crit_edge

out.if.else_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.body56:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xusb_enter_elpg.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_xusb_enter_elpg, %if.then68)) #10
          to label %if.end103 [label %if.then68], !srcloc !452

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  %186 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %tegra, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xusb_enter_elpg.__UNIQUE_ID_ddebug303, ptr noundef %187, ptr noundef nonnull @.str.218) #10
  br label %if.end103

if.else:                                          ; preds = %out.if.else_crit_edge, %do.end33, %do.end23
  %err.0170 = phi i32 [ %call27, %out.if.else_crit_edge ], [ %call27, %do.end33 ], [ -16, %do.end23 ]
  %188 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %op_regs, align 4
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #10, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !468
  %191 = or i32 %190, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !469
  tail call void @arm_heavy_mb() #10
  %192 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %op_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %191) #10, !srcloc !456
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xusb_enter_elpg.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_xusb_enter_elpg, %if.then97)) #10
          to label %do.end101 [label %if.then97], !srcloc !452

if.then97:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %194 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %tegra, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xusb_enter_elpg.__UNIQUE_ID_ddebug304, ptr noundef %195, ptr noundef nonnull @.str.219) #10
  br label %do.end101

do.end101:                                        ; preds = %if.then97, %if.else
  %196 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %tegra, align 4
  %call.i163 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %197, i32 0, i32 12, i32 22
  %198 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %198)
  store volatile i64 %call.i163, ptr %last_busy.i, align 8
  br label %if.end103

if.end103:                                        ; preds = %do.end101, %if.then68, %do.body56
  %err.0169 = phi i32 [ 0, %if.then68 ], [ %err.0170, %do.end101 ], [ 0, %do.body56 ]
  ret i32 %err.0169
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_padctl_disable_phy_wake(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_padctl_disable_phy_sleepwalk(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_padctl_enable_phy_sleepwalk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_padctl_enable_phy_wake(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 216)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 216)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !30, !32, !34, !35, !36, !37, !38, !40, !42, !43, !44, !45, !46, !48, !50, !51, !52, !54, !56, !57, !58, !60, !62, !63, !64, !66, !68, !69, !70, !72, !74, !75, !76, !78, !80, !81, !82, !84, !86, !87, !88, !90, !92, !93, !94, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !205, !206, !208, !209, !211, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !232, !234, !235, !236, !237, !239, !240, !241, !242, !243, !245, !246, !247, !248, !249, !251, !252, !253, !254, !256, !258, !260, !261, !262, !264, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !280, !281, !282, !284, !285, !286, !287, !288, !290, !291, !292, !294, !295, !296, !297, !298, !299, !300, !302, !303, !304, !306, !307, !308, !310, !311, !313, !314, !315, !316, !318, !319, !320, !322, !323, !325, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !387, !388, !389, !391, !392, !393, !395, !396, !398, !399, !401, !402, !404, !405, !406, !408, !409, !411, !412, !414, !415, !416, !418, !419, !420, !422, !423, !424, !426, !427, !429, !430, !432, !433, !434, !435, !437, !438, !439}
!llvm.module.flags = !{!440, !441, !442, !443, !444, !445, !446, !447}
!llvm.ident = !{!448}

!0 = !{ptr @__UNIQUE_ID_firmware308, !1, !"__UNIQUE_ID_firmware308", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2296, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware309, !3, !"__UNIQUE_ID_firmware309", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2332, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware310, !5, !"__UNIQUE_ID_firmware310", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2336, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware311, !7, !"__UNIQUE_ID_firmware311", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2405, i32 1}
!8 = !{ptr @__initcall__kmod_xhci_tegra__312_2450_tegra_xusb_init6, !9, !"__initcall__kmod_xhci_tegra__312_2450_tegra_xusb_init6", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2450, i32 1}
!10 = !{ptr @__exitcall_tegra_xusb_exit, !11, !"__exitcall_tegra_xusb_exit", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2456, i32 1}
!12 = !{ptr @__UNIQUE_ID_author313, !13, !"__UNIQUE_ID_author313", i1 false, i1 false}
!13 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2458, i32 1}
!14 = !{ptr @__UNIQUE_ID_description314, !15, !"__UNIQUE_ID_description314", i1 false, i1 false}
!15 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2459, i32 1}
!16 = !{ptr @__UNIQUE_ID_file315, !17, !"__UNIQUE_ID_file315", i1 false, i1 false}
!17 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2460, i32 1}
!18 = !{ptr @__UNIQUE_ID_license316, !17, !"__UNIQUE_ID_license316", i1 false, i1 false}
!19 = !{ptr @tegra_xhci_hc_driver, !20, !"tegra_xhci_hc_driver", i1 false, i1 false}
!20 = !{!"../drivers/usb/host/xhci-tegra.c", i32 279, i32 39}
!21 = !{ptr @tegra_xhci_overrides, !22, !"tegra_xhci_overrides", i1 false, i1 false}
!22 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2440, i32 43}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2420, i32 11}
!25 = !{ptr @tegra_xusb_driver, !26, !"tegra_xusb_driver", i1 false, i1 false}
!26 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2416, i32 31}
!27 = !{ptr @tegra_xusb_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1419, i32 2}
!29 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1452, i32 43}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1467, i32 3}
!34 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tegra_xusb_probe.__UNIQUE_ID_ddebug301, !33, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1471, i32 45}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1474, i32 3}
!42 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @tegra_xusb_probe._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @tegra_xusb_probe._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1478, i32 47}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1481, i32 3}
!50 = !{ptr @tegra_xusb_probe._entry.12, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @tegra_xusb_probe._entry_ptr.14, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1485, i32 43}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1488, i32 3}
!56 = !{ptr @tegra_xusb_probe._entry.16, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @tegra_xusb_probe._entry_ptr.18, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1492, i32 47}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1495, i32 3}
!62 = !{ptr @tegra_xusb_probe._entry.20, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @tegra_xusb_probe._entry_ptr.22, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1499, i32 47}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1502, i32 3}
!68 = !{ptr @tegra_xusb_probe._entry.24, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @tegra_xusb_probe._entry_ptr.26, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1506, i32 47}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1509, i32 3}
!74 = !{ptr @tegra_xusb_probe._entry.28, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @tegra_xusb_probe._entry_ptr.30, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1513, i32 47}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1516, i32 3}
!80 = !{ptr @tegra_xusb_probe._entry.32, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @tegra_xusb_probe._entry_ptr.34, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1520, i32 42}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1523, i32 3}
!86 = !{ptr @tegra_xusb_probe._entry.36, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @tegra_xusb_probe._entry_ptr.38, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1527, i32 42}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1530, i32 3}
!92 = !{ptr @tegra_xusb_probe._entry.40, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @tegra_xusb_probe._entry_ptr.42, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1534, i32 48}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1539, i32 4}
!98 = !{ptr @tegra_xusb_probe._entry.44, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @tegra_xusb_probe._entry_ptr.46, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1547, i32 4}
!102 = !{ptr @tegra_xusb_probe._entry.47, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @tegra_xusb_probe._entry_ptr.49, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1571, i32 3}
!106 = !{ptr @tegra_xusb_probe._entry.50, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @tegra_xusb_probe._entry_ptr.52, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1576, i32 47}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1592, i32 33}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1597, i32 5}
!114 = !{ptr @tegra_xusb_probe._entry.55, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @tegra_xusb_probe._entry_ptr.57, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1628, i32 3}
!118 = !{ptr @tegra_xusb_probe._entry.58, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @tegra_xusb_probe._entry_ptr.60, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1634, i32 3}
!122 = !{ptr @tegra_xusb_probe._entry.61, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @tegra_xusb_probe._entry_ptr.63, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1640, i32 3}
!126 = !{ptr @tegra_xusb_probe._entry.64, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @tegra_xusb_probe._entry_ptr.66, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1650, i32 3}
!130 = !{ptr @tegra_xusb_probe._entry.67, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @tegra_xusb_probe._entry_ptr.69, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.71, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1656, i32 3}
!134 = !{ptr @tegra_xusb_probe._entry.70, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @tegra_xusb_probe._entry_ptr.72, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.74, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1668, i32 3}
!138 = !{ptr @tegra_xusb_probe._entry.73, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @tegra_xusb_probe._entry_ptr.75, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.77, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1674, i32 3}
!142 = !{ptr @tegra_xusb_probe._entry.76, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @tegra_xusb_probe._entry_ptr.78, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.80, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1687, i32 3}
!146 = !{ptr @tegra_xusb_probe._entry.79, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @tegra_xusb_probe._entry_ptr.81, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.83, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1694, i32 3}
!150 = !{ptr @tegra_xusb_probe._entry.82, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @tegra_xusb_probe._entry_ptr.84, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.86, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1703, i32 3}
!154 = !{ptr @tegra_xusb_probe._entry.85, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @tegra_xusb_probe._entry_ptr.87, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.89, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1713, i32 4}
!158 = !{ptr @tegra_xusb_probe._entry.88, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @tegra_xusb_probe._entry_ptr.90, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.92, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1720, i32 3}
!162 = !{ptr @tegra_xusb_probe._entry.91, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @tegra_xusb_probe._entry_ptr.93, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.95, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1726, i32 3}
!166 = !{ptr @tegra_xusb_probe._entry.94, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @tegra_xusb_probe._entry_ptr.96, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.97, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1015, i32 3}
!170 = !{ptr @.str.98, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @tegra_xusb_powerdomain_init._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @tegra_xusb_powerdomain_init._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.100, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1022, i32 3}
!175 = !{ptr @tegra_xusb_powerdomain_init._entry.99, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @tegra_xusb_powerdomain_init._entry_ptr.101, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.102, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/usb/host/xhci-tegra.c", i32 375, i32 3}
!179 = !{ptr @.str.103, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @tegra_xusb_set_ss_clk._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @tegra_xusb_set_ss_clk._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.105, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/host/xhci-tegra.c", i32 380, i32 3}
!184 = !{ptr @tegra_xusb_set_ss_clk._entry.104, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @tegra_xusb_set_ss_clk._entry_ptr.106, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.107, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/host/xhci-tegra.c", i32 861, i32 3}
!188 = !{ptr @tegra_xusb_request_firmware._entry, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @tegra_xusb_request_firmware._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.109, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/host/xhci-tegra.c", i32 872, i32 3}
!192 = !{ptr @tegra_xusb_request_firmware._entry.108, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @tegra_xusb_request_firmware._entry_ptr.110, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.111, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1039, i32 4}
!196 = !{ptr @.str.112, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @tegra_xusb_unpowergate_partitions._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @tegra_xusb_unpowergate_partitions._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.114, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1045, i32 4}
!201 = !{ptr @tegra_xusb_unpowergate_partitions._entry.113, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @tegra_xusb_unpowergate_partitions._entry_ptr.115, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @tegra_xusb_unpowergate_partitions._entry.116, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1054, i32 4}
!205 = !{ptr @tegra_xusb_unpowergate_partitions._entry_ptr.117, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @tegra_xusb_unpowergate_partitions._entry.118, !207, !"_entry", i1 false, i1 false}
!207 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1062, i32 4}
!208 = !{ptr @tegra_xusb_unpowergate_partitions._entry_ptr.119, !207, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.120, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/usb/host/xhci-tegra.c", i32 901, i32 3}
!211 = !{ptr @.str.121, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.122, !210, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @tegra_xusb_load_firmware._entry, !210, !"_entry", i1 false, i1 false}
!214 = !{ptr @tegra_xusb_load_firmware._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.124, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/usb/host/xhci-tegra.c", i32 960, i32 3}
!217 = !{ptr @tegra_xusb_load_firmware._entry.123, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @tegra_xusb_load_firmware._entry_ptr.125, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.127, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/usb/host/xhci-tegra.c", i32 984, i32 3}
!221 = !{ptr @tegra_xusb_load_firmware._entry.126, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @tegra_xusb_load_firmware._entry_ptr.128, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.130, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/usb/host/xhci-tegra.c", i32 990, i32 2}
!225 = !{ptr @tegra_xusb_load_firmware._entry.129, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @tegra_xusb_load_firmware._entry_ptr.131, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.132, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/usb/host/xhci-tegra.c", i32 517, i32 3}
!229 = !{ptr @.str.133, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @tegra_xusb_mbox_irq._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @tegra_xusb_mbox_irq._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.134, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/usb/host/xhci-tegra.c", i32 575, i32 4}
!234 = !{ptr @.str.135, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @tegra_xusb_mbox_handle._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @tegra_xusb_mbox_handle._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.137, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/usb/host/xhci-tegra.c", i32 603, i32 4}
!239 = !{ptr @tegra_xusb_mbox_handle._entry.136, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @tegra_xusb_mbox_handle._entry_ptr.138, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.139, !238, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.140, !238, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.142, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/usb/host/xhci-tegra.c", i32 639, i32 4}
!245 = !{ptr @tegra_xusb_mbox_handle._entry.141, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @tegra_xusb_mbox_handle._entry_ptr.143, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.144, !244, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.145, !244, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.147, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/usb/host/xhci-tegra.c", i32 651, i32 3}
!251 = !{ptr @.str.148, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @tegra_xusb_mbox_handle._entry.146, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @tegra_xusb_mbox_handle._entry_ptr.149, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.150, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/usb/host/xhci-tegra.c", i32 656, i32 49}
!256 = !{ptr @.str.151, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/usb/host/xhci-tegra.c", i32 656, i32 57}
!258 = !{ptr @.str.153, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/usb/host/xhci-tegra.c", i32 660, i32 4}
!260 = !{ptr @tegra_xusb_mbox_handle._entry.152, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @tegra_xusb_mbox_handle._entry_ptr.154, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.155, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/usb/host/xhci-tegra.c", i32 464, i32 4}
!264 = !{ptr @.str.156, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @tegra_xusb_mbox_send._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @tegra_xusb_mbox_send._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.158, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/usb/host/xhci-tegra.c", i32 472, i32 4}
!269 = !{ptr @tegra_xusb_mbox_send._entry.157, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @tegra_xusb_mbox_send._entry_ptr.159, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.160, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1120, i32 3}
!273 = !{ptr @__tegra_xusb_enable_firmware_messages._entry, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @__tegra_xusb_enable_firmware_messages._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @tegra_xusb_init_usb_phy.__key, !276, !"__key", i1 false, i1 false}
!276 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1362, i32 2}
!277 = !{ptr @.str.161, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @.str.162, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1377, i32 4}
!280 = !{ptr @.str.163, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @tegra_xusb_init_usb_phy.__UNIQUE_ID_ddebug299, !279, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!282 = !{ptr @.str.164, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1217, i32 2}
!284 = !{ptr @.str.165, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @tegra_xhci_id_work.__UNIQUE_ID_ddebug296, !283, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!286 = !{ptr @.str.166, !283, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.167, !283, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.168, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1247, i32 6}
!290 = !{ptr @tegra_xhci_id_work._entry, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @tegra_xhci_id_work._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.169, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1166, i32 2}
!294 = !{ptr @.str.170, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @tegra_xhci_set_port_power.__UNIQUE_ID_ddebug295, !293, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!296 = !{ptr @.str.171, !293, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @.str.172, !293, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @.str.173, !293, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @.str.174, !293, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @.str.175, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1185, i32 3}
!302 = !{ptr @tegra_xhci_set_port_power._entry, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @tegra_xhci_set_port_power._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.176, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1332, i32 2}
!306 = !{ptr @.str.177, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @tegra_xhci_id_notify.__UNIQUE_ID_ddebug297, !305, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!308 = !{ptr @.str.178, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1336, i32 3}
!310 = !{ptr @tegra_xhci_id_notify.__UNIQUE_ID_ddebug298, !309, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!311 = !{ptr @.str.179, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1079, i32 4}
!313 = !{ptr @.str.180, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @tegra_xusb_powergate_partitions._entry, !312, !"_entry", i1 false, i1 false}
!315 = !{ptr @tegra_xusb_powergate_partitions._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.182, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1085, i32 4}
!318 = !{ptr @tegra_xusb_powergate_partitions._entry.181, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @tegra_xusb_powergate_partitions._entry_ptr.183, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @tegra_xusb_powergate_partitions._entry.184, !321, !"_entry", i1 false, i1 false}
!321 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1092, i32 4}
!322 = !{ptr @tegra_xusb_powergate_partitions._entry_ptr.185, !321, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @tegra_xusb_powergate_partitions._entry.186, !324, !"_entry", i1 false, i1 false}
!324 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1098, i32 4}
!325 = !{ptr @tegra_xusb_powergate_partitions._entry_ptr.187, !324, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @tegra_xusb_of_match, !327, !"tegra_xusb_of_match", i1 false, i1 false}
!327 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2407, i32 34}
!328 = !{ptr @.str.188, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2275, i32 14}
!330 = !{ptr @tegra124_soc, !331, !"tegra124_soc", i1 false, i1 false}
!331 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2274, i32 36}
!332 = !{ptr @.str.189, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2226, i32 2}
!334 = !{ptr @.str.190, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2227, i32 2}
!336 = !{ptr @.str.191, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2228, i32 2}
!338 = !{ptr @.str.192, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2229, i32 2}
!340 = !{ptr @tegra124_supply_names, !341, !"tegra124_supply_names", i1 false, i1 false}
!341 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2225, i32 27}
!342 = !{ptr @.str.193, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2233, i32 12}
!344 = !{ptr @.str.194, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2235, i32 12}
!346 = !{ptr @tegra124_phy_types, !347, !"tegra124_phy_types", i1 false, i1 false}
!347 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2232, i32 41}
!348 = !{ptr @tegra124_xusb_context, !349, !"tegra124_xusb_context", i1 false, i1 false}
!349 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2263, i32 44}
!350 = !{ptr @tegra124_xusb_context_ipfs, !351, !"tegra124_xusb_context_ipfs", i1 false, i1 false}
!351 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2238, i32 27}
!352 = !{ptr @tegra124_xusb_context_fpci, !353, !"tegra124_xusb_context_fpci", i1 false, i1 false}
!353 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2252, i32 27}
!354 = !{ptr @.str.195, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2311, i32 14}
!356 = !{ptr @tegra210_soc, !357, !"tegra210_soc", i1 false, i1 false}
!357 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2310, i32 36}
!358 = !{ptr @.str.196, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2300, i32 2}
!360 = !{ptr @tegra210_supply_names, !361, !"tegra210_supply_names", i1 false, i1 false}
!361 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2298, i32 27}
!362 = !{ptr @tegra210_phy_types, !363, !"tegra210_phy_types", i1 false, i1 false}
!363 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2304, i32 41}
!364 = !{ptr @.str.197, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2352, i32 14}
!366 = !{ptr @tegra186_soc, !367, !"tegra186_soc", i1 false, i1 false}
!367 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2351, i32 36}
!368 = !{ptr @tegra186_supply_names, !369, !"tegra186_supply_names", i1 false, i1 false}
!369 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2334, i32 27}
!370 = !{ptr @tegra186_phy_types, !371, !"tegra186_phy_types", i1 false, i1 false}
!371 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2338, i32 41}
!372 = !{ptr @tegra186_xusb_context, !373, !"tegra186_xusb_context", i1 false, i1 false}
!373 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2344, i32 44}
!374 = !{ptr @.str.198, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2384, i32 14}
!376 = !{ptr @tegra194_soc, !377, !"tegra194_soc", i1 false, i1 false}
!377 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2383, i32 36}
!378 = !{ptr @tegra194_supply_names, !379, !"tegra194_supply_names", i1 false, i1 false}
!379 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2375, i32 27}
!380 = !{ptr @tegra194_phy_types, !381, !"tegra194_phy_types", i1 false, i1 false}
!381 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2378, i32 41}
!382 = !{ptr @tegra_xusb_pm_ops, !383, !"tegra_xusb_pm_ops", i1 false, i1 false}
!383 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2219, i32 32}
!384 = !{ptr @.str.199, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2154, i32 5}
!386 = !{ptr @.str.200, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @tegra_xusb_suspend._entry, !385, !"_entry", i1 false, i1 false}
!388 = !{ptr @tegra_xusb_suspend._entry_ptr, !385, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.201, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2044, i32 2}
!391 = !{ptr @.str.202, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @tegra_xusb_exit_elpg.__UNIQUE_ID_ddebug305, !390, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!393 = !{ptr @tegra_xusb_exit_elpg._entry, !394, !"_entry", i1 false, i1 false}
!394 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2049, i32 3}
!395 = !{ptr @tegra_xusb_exit_elpg._entry_ptr, !394, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @tegra_xusb_exit_elpg._entry.203, !397, !"_entry", i1 false, i1 false}
!397 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2075, i32 3}
!398 = !{ptr @tegra_xusb_exit_elpg._entry_ptr.204, !397, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @tegra_xusb_exit_elpg._entry.205, !400, !"_entry", i1 false, i1 false}
!400 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2081, i32 3}
!401 = !{ptr @tegra_xusb_exit_elpg._entry_ptr.206, !400, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.208, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2090, i32 3}
!404 = !{ptr @tegra_xusb_exit_elpg._entry.207, !403, !"_entry", i1 false, i1 false}
!405 = !{ptr @tegra_xusb_exit_elpg._entry_ptr.209, !403, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.210, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2114, i32 3}
!408 = !{ptr @tegra_xusb_exit_elpg.__UNIQUE_ID_ddebug306, !407, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!409 = !{ptr @.str.211, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2116, i32 3}
!411 = !{ptr @tegra_xusb_exit_elpg.__UNIQUE_ID_ddebug307, !410, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!412 = !{ptr @.str.212, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1984, i32 2}
!414 = !{ptr @.str.213, !413, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @tegra_xusb_enter_elpg.__UNIQUE_ID_ddebug302, !413, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!416 = !{ptr @.str.214, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1992, i32 3}
!418 = !{ptr @tegra_xusb_enter_elpg._entry, !417, !"_entry", i1 false, i1 false}
!419 = !{ptr @tegra_xusb_enter_elpg._entry_ptr, !417, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.216, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1998, i32 3}
!422 = !{ptr @tegra_xusb_enter_elpg._entry.215, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @tegra_xusb_enter_elpg._entry_ptr.217, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.218, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2022, i32 3}
!426 = !{ptr @tegra_xusb_enter_elpg.__UNIQUE_ID_ddebug303, !425, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!427 = !{ptr @.str.219, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2028, i32 3}
!429 = !{ptr @tegra_xusb_enter_elpg.__UNIQUE_ID_ddebug304, !428, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!430 = !{ptr @.str.220, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/usb/host/xhci-tegra.c", i32 1820, i32 4}
!432 = !{ptr @.str.221, !431, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @xhci_hub_ports_suspended._entry, !431, !"_entry", i1 false, i1 false}
!434 = !{ptr @xhci_hub_ports_suspended._entry_ptr, !431, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @.str.222, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/usb/host/xhci-tegra.c", i32 2183, i32 4}
!437 = !{ptr @.str.223, !436, !"<string literal>", i1 false, i1 false}
!438 = !{ptr @tegra_xusb_resume._entry, !436, !"_entry", i1 false, i1 false}
!439 = !{ptr @tegra_xusb_resume._entry_ptr, !436, !"_entry_ptr", i1 false, i1 false}
!440 = !{i32 1, !"wchar_size", i32 2}
!441 = !{i32 1, !"min_enum_size", i32 4}
!442 = !{i32 8, !"branch-target-enforcement", i32 0}
!443 = !{i32 8, !"sign-return-address", i32 0}
!444 = !{i32 8, !"sign-return-address-all", i32 0}
!445 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!446 = !{i32 7, !"uwtable", i32 1}
!447 = !{i32 7, !"frame-pointer", i32 2}
!448 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!449 = !{i8 0, i8 2}
!450 = !{!"auto-init"}
!451 = !{!"branch_weights", i32 1, i32 2000}
!452 = !{i64 2148780623, i64 2148780628, i64 2148780641, i64 2148780685, i64 2148780719, i64 2148780740}
!453 = !{i64 6315189}
!454 = !{i64 2155650423}
!455 = !{i64 2155650816}
!456 = !{i64 6314771}
!457 = !{i64 2155649154}
!458 = !{i64 2155649547}
!459 = !{i64 2155675714}
!460 = !{i64 2155682043}
!461 = !{i64 2155682938}
!462 = !{i64 2155801922}
!463 = !{i64 2155802167}
!464 = !{i64 2155783527}
!465 = !{i64 2155783772}
!466 = !{i64 2155777974}
!467 = !{i64 2155780866}
!468 = !{i64 2155789989}
!469 = !{i64 2155790234}
