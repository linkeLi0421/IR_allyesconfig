; ModuleID = '/llk/IR_all_yes/drivers/usb/chipidea/ci_hdrc_tegra.c_pt.bc'
source_filename = "../drivers/usb/chipidea/ci_hdrc_tegra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_usb_soc_info = type { i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.tegra_core_opp_params = type { i8 }
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
%struct.tegra_usb = type { %struct.ci_hdrc_platform_data, ptr, ptr, ptr, ptr, i8 }
%struct.ci_hdrc_platform_data = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, %struct.usb_otg_caps, i8, i32, i32, i32, i32, %struct.ci_hdrc_cable, %struct.ci_hdrc_cable, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.ci_hdrc_cable = type { i8, i8, i8, ptr, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.ci_hdrc = type { ptr, %struct.spinlock, %struct.hw_bank, i32, [2 x ptr], i32, i8, %struct.usb_otg, %struct.otg_fsm, %struct.hrtimer, [12 x i64], i32, i32, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.usb_gadget, ptr, i32, i32, [32 x %struct.ci_hw_ep], i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, ptr, %struct.ulpi_ops, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i32 }
%struct.hw_bank = type { i32, i32, ptr, ptr, ptr, i32, [38 x ptr] }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.mutex, ptr, %struct.delayed_work, i8, i8 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.ci_hw_ep = type { %struct.usb_ep, i8, i8, i8, [16 x i8], %struct.anon.84, i32, ptr, ptr, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.anon.84 = type { %struct.list_head, ptr, i32 }
%struct.ulpi_ops = type { ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.85, i32 }
%union.anon.85 = type { ptr }
%struct.ehci_regs = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [6 x i32], i32, %union.anon.86, %union.anon.88, [2 x i32], i32 }
%union.anon.86 = type { [15 x i32] }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, [15 x i32] }

@__initcall__kmod_ci_hdrc_tegra__293_415_tegra_usb_driver_init6 = internal global ptr @tegra_usb_driver_init, section ".initcall6.init", align 4
@tegra_usb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_usb_probe, ptr @tegra_usb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_usb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_usb_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_usb_driver_exit = internal global ptr @tegra_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [50 x i8] c"ci_hdrc_tegra.description=NVIDIA Tegra USB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [57 x i8] c"ci_hdrc_tegra.author=Thierry Reding <treding@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [54 x i8] c"ci_hdrc_tegra.file=drivers/usb/chipidea/ci_hdrc_tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [29 x i8] c"ci_hdrc_tegra.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-usb\00", [22 x i8] zeroinitializer }, align 32
@tegra_usb_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_ehci_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_ehci_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_udc_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_udc_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_udc_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_udc_soc_info }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@tegra_usb_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_usb_runtime_suspend, ptr @tegra_usb_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 288, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to match OF data\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_usb_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/usb/chipidea/ci_hdrc_tegra.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_usb_probe._entry_ptr = internal global ptr @tegra_usb_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvidia,phy\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to get PHY\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra_usb_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get clock: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_usb_probe._entry_ptr.10 = internal global ptr @tegra_usb_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvidia,needs-double-reset\00", [38 x i8] zeroinitializer }, align 32
@tegra_usb_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to reset controller: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_usb_probe._entry_ptr.14 = internal global ptr @tegra_usb_probe._entry.12, section ".printk_index", align 4
@tegra_usb_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to add HDRC device: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_usb_probe._entry_ptr.17 = internal global ptr @tegra_usb_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@tegra_usb_reset_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 107, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't get ehci reset: %pe\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_usb_reset_controller\00", [37 x i8] zeroinitializer }, align 32
@tegra_usb_reset_controller._entry_ptr = internal global ptr @tegra_usb_reset_controller._entry, section ".printk_index", align 4
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"utmi-pads\00", [22 x i8] zeroinitializer }, align 32
@tegra_usb_reset_controller._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.3, i32 122, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can't get utmi-pads reset from the PHY\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tegra_usb_reset_controller._entry_ptr.25 = internal global ptr @tegra_usb_reset_controller._entry.22, section ".printk_index", align 4
@tegra_usb_reset_controller._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.20, ptr @.str.3, i32 123, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"continuing, but please update your DT\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_usb_reset_controller._entry_ptr.28 = internal global ptr @tegra_usb_reset_controller._entry.26, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra20_ehci_soc_info = internal constant { %struct.tegra_usb_soc_info, [20 x i8] } { %struct.tegra_usb_soc_info { i32 12292, i32 10, i32 1 }, [20 x i8] zeroinitializer }, align 32
@tegra30_ehci_soc_info = internal constant { %struct.tegra_usb_soc_info, [20 x i8] } { %struct.tegra_usb_soc_info { i32 12292, i32 16, i32 1 }, [20 x i8] zeroinitializer }, align 32
@tegra20_udc_soc_info = internal constant { %struct.tegra_usb_soc_info, [20 x i8] } { %struct.tegra_usb_soc_info { i32 12292, i32 10, i32 0 }, [20 x i8] zeroinitializer }, align 32
@tegra30_udc_soc_info = internal constant { %struct.tegra_usb_soc_info, [20 x i8] } { %struct.tegra_usb_soc_info { i32 12292, i32 16, i32 0 }, [20 x i8] zeroinitializer }, align 32
@tegra_usb_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 385, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_usb_runtime_resume\00", [39 x i8] zeroinitializer }, align 32
@tegra_usb_runtime_resume._entry_ptr = internal global ptr @tegra_usb_runtime_resume._entry, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"tegra_usb_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 406, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 408, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"tegra_usb_of_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 74, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"tegra_usb_pm\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 401, i32 32 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 288, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 292, i32 53 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 295, i32 10 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 300, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 313, i32 42 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 318, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 350, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 105, i32 43 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 107, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 120, i32 49 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 122, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 123, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [22 x i8] c"tegra20_ehci_soc_info\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 42, i32 40 }
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"tegra30_ehci_soc_info\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 50, i32 40 }
@___asan_gen_.124 = private unnamed_addr constant [21 x i8] c"tegra20_udc_soc_info\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 58, i32 40 }
@___asan_gen_.127 = private unnamed_addr constant [21 x i8] c"tegra30_udc_soc_info\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 66, i32 40 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [40 x i8] c"../drivers/usb/chipidea/ci_hdrc_tegra.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 385, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_tegra_usb_driver_exit, ptr @__initcall__kmod_ci_hdrc_tegra__293_415_tegra_usb_driver_init6, ptr @tegra_usb_driver_exit, ptr @tegra_usb_probe._entry, ptr @tegra_usb_probe._entry.12, ptr @tegra_usb_probe._entry.15, ptr @tegra_usb_probe._entry.8, ptr @tegra_usb_probe._entry_ptr, ptr @tegra_usb_probe._entry_ptr.10, ptr @tegra_usb_probe._entry_ptr.14, ptr @tegra_usb_probe._entry_ptr.17, ptr @tegra_usb_reset_controller._entry, ptr @tegra_usb_reset_controller._entry.22, ptr @tegra_usb_reset_controller._entry.26, ptr @tegra_usb_reset_controller._entry_ptr, ptr @tegra_usb_reset_controller._entry_ptr.25, ptr @tegra_usb_reset_controller._entry_ptr.28, ptr @tegra_usb_runtime_resume._entry, ptr @tegra_usb_runtime_resume._entry_ptr, ptr @tegra_usb_driver, ptr @.str, ptr @tegra_usb_of_match, ptr @tegra_usb_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @tegra20_ehci_soc_info, ptr @tegra30_ehci_soc_info, ptr @tegra20_udc_soc_info, ptr @tegra30_udc_soc_info, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_reset_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_reset_controller._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_reset_controller._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_ehci_soc_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_ehci_soc_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_udc_soc_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_udc_soc_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_usb_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_usb_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_usb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_usb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %opp_params.i = alloca %struct.tegra_core_opp_params, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 160, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_usb_get_phy_by_phandle(ptr noundef %dev, ptr noundef nonnull @.str.6, i8 noundef zeroext 0) #7
  %phy = getelementptr inbounds %struct.tegra_usb, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8, ptr %phy, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call8 to i32
  %call15 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %2, ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %call18 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.tegra_usb, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call18, ptr %clk, align 4
  %cmp.i154 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %4) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %opp_params.i) #7
  %5 = ptrtoint ptr %opp_params.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %opp_params.i, align 1
  %call.i155 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %dev, ptr noundef nonnull %opp_params.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i155)
  %cmp.not.i = icmp eq i32 %call.i155, -19
  %.call.i = select i1 %cmp.not.i, i32 0, i32 %call.i155
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %opp_params.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.call.i)
  %tobool31.not = icmp eq i32 %.call.i, 0
  br i1 %tobool31.not, label %if.end33, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  call void @pm_runtime_enable(ptr noundef %dev) #7
  %call.i156 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %cmp.i157 = icmp slt i32 %call.i156, 0
  br i1 %cmp.i157, label %if.then.i, label %if.end39

if.then.i:                                        ; preds = %if.end33
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !84
  call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %6 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !85
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !86
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  %call41 = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.11) #7
  br i1 %call41, label %if.then42, label %if.end39.if.end43_crit_edge

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %needs_double_reset = getelementptr inbounds %struct.tegra_usb, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %needs_double_reset to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %needs_double_reset, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end39.if.end43_crit_edge
  %call.i.i = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull %call.i.i) #10
  %8 = ptrtoint ptr %call.i.i to i32
  br label %tegra_usb_reset_controller.exit

if.end.i:                                         ; preds = %if.end43
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %11 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i48.i = call i32 @__of_parse_phandle_with_args(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %tobool.not.i.i = icmp eq i32 %call.i48.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  br label %do.end50

of_parse_phandle.exit.i:                          ; preds = %if.end.i
  %12 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.do.end50_crit_edge, label %if.end5.i

of_parse_phandle.exit.i.do.end50_crit_edge:       ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

if.end5.i:                                        ; preds = %of_parse_phandle.exit.i
  %call.i49.i = call ptr @__of_reset_control_get(ptr noundef nonnull %13, ptr noundef nonnull @.str.21, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %cmp.i50.i = icmp ugt ptr %call.i49.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50.i, label %do.end11.i, label %if.else.i

do.end11.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27) #10
  br label %if.end15.i

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @reset_control_put(ptr noundef %call.i49.i) #7
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else.i, %do.end11.i
  call void @of_node_put(ptr noundef nonnull %13) #7
  %call16.i = call i32 @reset_control_deassert(ptr noundef %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end15.i.do.end50_crit_edge

if.end15.i.do.end50_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

if.end19.i:                                       ; preds = %if.end15.i
  %call20.i = call i32 @reset_control_assert(ptr noundef %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end19.i.do.end50_crit_edge

if.end19.i.do.end50_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

if.end23.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748) #7
  %call24.i = call i32 @reset_control_deassert(ptr noundef %call.i.i) #7
  br label %tegra_usb_reset_controller.exit

tegra_usb_reset_controller.exit:                  ; preds = %if.end23.i, %do.end.i
  %retval.0.i158 = phi i32 [ %8, %do.end.i ], [ %call24.i, %if.end23.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i158)
  %tobool46.not = icmp eq i32 %retval.0.i158, 0
  br i1 %tobool46.not, label %if.end52, label %tegra_usb_reset_controller.exit.do.end50_crit_edge

tegra_usb_reset_controller.exit.do.end50_crit_edge: ; preds = %tegra_usb_reset_controller.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

do.end50:                                         ; preds = %tegra_usb_reset_controller.exit.do.end50_crit_edge, %if.end19.i.do.end50_crit_edge, %if.end15.i.do.end50_crit_edge, %of_parse_phandle.exit.i.do.end50_crit_edge, %of_parse_phandle.exit.thread.i
  %retval.0.i158174 = phi i32 [ %retval.0.i158, %tegra_usb_reset_controller.exit.do.end50_crit_edge ], [ -2, %of_parse_phandle.exit.thread.i ], [ %call20.i, %if.end19.i.do.end50_crit_edge ], [ %call16.i, %if.end15.i.do.end50_crit_edge ], [ -2, %of_parse_phandle.exit.i.do.end50_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i158174) #10
  br label %fail_power_off

if.end52:                                         ; preds = %tegra_usb_reset_controller.exit
  %15 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy, align 4
  %tobool.not.i159 = icmp eq ptr %16, null
  br i1 %tobool.not.i159, label %if.end52.if.end57_crit_edge, label %land.lhs.true.i

if.end52.if.end57_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

land.lhs.true.i:                                  ; preds = %if.end52
  %init.i = getelementptr inbounds %struct.usb_phy, ptr %16, i32 0, i32 22
  %17 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init.i, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end57_crit_edge, label %usb_phy_init.exit

land.lhs.true.i.if.end57_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

usb_phy_init.exit:                                ; preds = %land.lhs.true.i
  %call.i160 = call i32 %18(ptr noundef nonnull %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool55.not = icmp eq i32 %call.i160, 0
  br i1 %tobool55.not, label %usb_phy_init.exit.if.end57_crit_edge, label %usb_phy_init.exit.fail_power_off_crit_edge

usb_phy_init.exit.fail_power_off_crit_edge:       ; preds = %usb_phy_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_power_off

usb_phy_init.exit.if.end57_crit_edge:             ; preds = %usb_phy_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.end57:                                         ; preds = %usb_phy_init.exit.if.end57_crit_edge, %land.lhs.true.i.if.end57_crit_edge, %if.end52.if.end57_crit_edge
  %soc58 = getelementptr inbounds %struct.tegra_usb, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %soc58 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call2, ptr %soc58, align 4
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str, ptr %call.i, align 4
  %21 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call2, align 4
  %flags60 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %flags60 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %flags60, align 4
  %24 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy, align 4
  %usb_phy = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %usb_phy, align 4
  %dr_mode = getelementptr inbounds %struct.tegra_usb_soc_info, ptr %call2, i32 0, i32 2
  %27 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dr_mode, align 4
  %dr_mode64 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %call.i, i32 0, i32 7
  %29 = ptrtoint ptr %dr_mode64 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %dr_mode64, align 4
  %capoffset = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %capoffset to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 256, ptr %capoffset, align 4
  %enter_lpm = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %call.i, i32 0, i32 24
  %31 = ptrtoint ptr %enter_lpm to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @tegra_usb_enter_lpm, ptr %enter_lpm, align 4
  %hub_control = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %call.i, i32 0, i32 23
  %32 = ptrtoint ptr %hub_control to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @tegra_ehci_hub_control, ptr %hub_control, align 4
  %notify_event = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %call.i, i32 0, i32 8
  %33 = ptrtoint ptr %notify_event to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @tegra_usb_notify_event, ptr %notify_event, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %34 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node, align 8
  %call70 = call i32 @of_usb_get_phy_mode(ptr noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call70)
  %cmp = icmp eq i32 %call70, 3
  br i1 %cmp, label %if.then71, label %if.end57.if.end74_crit_edge

if.end57.if.end74_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then71:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags60, align 4
  %and = and i32 %37, -5
  store i32 %and, ptr %flags60, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end57.if.end74_crit_edge
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %38 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %resource, align 8
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %40 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_resources, align 4
  %call77 = call ptr @ci_hdrc_add_device(ptr noundef %dev, ptr noundef %39, i32 noundef %41, ptr noundef nonnull %call.i) #7
  %dev78 = getelementptr inbounds %struct.tegra_usb, ptr %call.i, i32 0, i32 1
  %42 = ptrtoint ptr %dev78 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call77, ptr %dev78, align 4
  %cmp.i163 = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i163, label %if.then81, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then81:                                        ; preds = %if.end74
  %43 = ptrtoint ptr %call77 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %43) #10
  %44 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %phy, align 4
  %tobool.not.i164 = icmp eq ptr %45, null
  br i1 %tobool.not.i164, label %if.then81.fail_power_off_crit_edge, label %land.lhs.true.i166

if.then81.fail_power_off_crit_edge:               ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_power_off

land.lhs.true.i166:                               ; preds = %if.then81
  %shutdown.i = getelementptr inbounds %struct.usb_phy, ptr %45, i32 0, i32 23
  %46 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %shutdown.i, align 4
  %tobool1.not.i165 = icmp eq ptr %47, null
  br i1 %tobool1.not.i165, label %land.lhs.true.i166.fail_power_off_crit_edge, label %if.then.i167

land.lhs.true.i166.fail_power_off_crit_edge:      ; preds = %land.lhs.true.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_power_off

if.then.i167:                                     ; preds = %land.lhs.true.i166
  call void @__sanitizer_cov_trace_pc() #9
  call void %47(ptr noundef nonnull %45) #7
  br label %fail_power_off

fail_power_off:                                   ; preds = %if.then.i167, %land.lhs.true.i166.fail_power_off_crit_edge, %if.then81.fail_power_off_crit_edge, %usb_phy_init.exit.fail_power_off_crit_edge, %do.end50
  %err.0 = phi i32 [ %retval.0.i158174, %do.end50 ], [ %call.i160, %usb_phy_init.exit.fail_power_off_crit_edge ], [ %43, %if.then81.fail_power_off_crit_edge ], [ %43, %land.lhs.true.i166.fail_power_off_crit_edge ], [ %43, %if.then.i167 ]
  %call.i169 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 4) #7
  %call93 = call i32 @pm_runtime_force_suspend(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %fail_power_off, %if.end74.cleanup_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then21, %if.then11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then11 ], [ %4, %if.then21 ], [ %err.0, %fail_power_off ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %.call.i, %if.end28.cleanup_crit_edge ], [ 0, %if.end74.cleanup_crit_edge ], [ %call.i156, %if.then.i.cleanup_crit_edge ], [ %call.i156, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_usb_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.tegra_usb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @ci_hdrc_remove_device(ptr noundef %3) #7
  %phy = getelementptr inbounds %struct.tegra_usb, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.usb_phy_shutdown.exit_crit_edge, label %land.lhs.true.i

entry.usb_phy_shutdown.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_phy_shutdown.exit

land.lhs.true.i:                                  ; preds = %entry
  %shutdown.i = getelementptr inbounds %struct.usb_phy, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shutdown.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.usb_phy_shutdown.exit_crit_edge, label %if.then.i

land.lhs.true.i.usb_phy_shutdown.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_phy_shutdown.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef nonnull %5) #7
  br label %usb_phy_shutdown.exit

usb_phy_shutdown.exit:                            ; preds = %if.then.i, %land.lhs.true.i.usb_phy_shutdown.exit_crit_edge, %entry.usb_phy_shutdown.exit_crit_edge
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 4) #7
  %call4 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_usb_enter_lpm(ptr nocapture noundef readonly %ci, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_phy = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 37
  %0 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_phy, align 4
  %conv = zext i1 %enable to i32
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.usb_phy_set_suspend.exit_crit_edge, label %land.lhs.true.i

entry.usb_phy_set_suspend.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_phy_set_suspend.exit

land.lhs.true.i:                                  ; preds = %entry
  %set_suspend.i = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %set_suspend.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_suspend.i, align 4
  %cmp.not.i = icmp eq ptr %3, null
  br i1 %cmp.not.i, label %land.lhs.true.i.usb_phy_set_suspend.exit_crit_edge, label %if.then.i

land.lhs.true.i.usb_phy_set_suspend.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_phy_set_suspend.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %3(ptr noundef nonnull %1, i32 noundef %conv) #7
  br label %usb_phy_set_suspend.exit

usb_phy_set_suspend.exit:                         ; preds = %if.then.i, %land.lhs.true.i.usb_phy_set_suspend.exit_crit_edge, %entry.usb_phy_set_suspend.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_ehci_hub_control(ptr nocapture noundef readonly %ci, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr nocapture noundef readnone %buf, i16 noundef zeroext %wLength, ptr nocapture noundef writeonly %done, ptr nocapture noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 38
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %4 = getelementptr inbounds %struct.ehci_regs, ptr %3, i32 0, i32 11
  %5 = and i16 %wIndex, 255
  %and = zext i16 %5 to i32
  %sub = add nsw i32 %and, -1
  %arrayidx = getelementptr [15 x i32], ptr %4, i32 0, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp2(i16 8963, i16 %typeReq)
  %cond = icmp eq i16 %typeReq, 8963
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %wValue)
  %cmp.not = icmp eq i16 %wValue, 4
  %or.cond = and i1 %cond, %cmp.not
  br i1 %or.cond, label %lor.lhs.false, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci, align 8
  %parent = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %needs_double_reset = getelementptr inbounds %struct.tegra_usb, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %needs_double_reset to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %needs_double_reset, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %lor.lhs.false.sw.epilog_crit_edge, label %if.end

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end:                                           ; preds = %lor.lhs.false
  %intr_enable.i = getelementptr inbounds %struct.ehci_regs, ptr %3, i32 0, i32 2
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %intr_enable.i) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %imx28_write_fix.i.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %15 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load.i.i = load i32, ptr %imx28_write_fix.i.i, align 4
  %16 = and i32 %bf.load.i.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.end.ehci_writel.exit.i_crit_edge

if.end.ehci_writel.exit.i_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ehci_writel.exit.i

do.body.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %intr_enable3.i = getelementptr inbounds %struct.ehci_regs, ptr %18, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intr_enable3.i, i32 0) #7, !srcloc !91
  br label %ehci_writel.exit.i

ehci_writel.exit.i:                               ; preds = %do.body.i.i, %if.end.ehci_writel.exit.i_crit_edge
  %lock.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 4
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %20) #7
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #7, !srcloc !88
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %23 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load.i64.i = load i32, ptr %imx28_write_fix.i.i, align 4
  %24 = and i32 %bf.load.i64.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i65.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i65.i, label %do.body.i66.i, label %ehci_writel.exit.i.ehci_writel.exit67.i_crit_edge

ehci_writel.exit.i.ehci_writel.exit67.i_crit_edge: ; preds = %ehci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ehci_writel.exit67.i

do.body.i66.i:                                    ; preds = %ehci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %22, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %25) #7, !srcloc !91
  br label %ehci_writel.exit67.i

ehci_writel.exit67.i:                             ; preds = %do.body.i66.i, %ehci_writel.exit.i.ehci_writel.exit67.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %26 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load.i69.i = load i32, ptr %imx28_write_fix.i.i, align 4
  %27 = and i32 %bf.load.i69.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i70.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i70.i, label %do.body.i71.i, label %ehci_writel.exit67.i.ehci_writel.exit72.i_crit_edge

ehci_writel.exit67.i.ehci_writel.exit72.i_crit_edge: ; preds = %ehci_writel.exit67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ehci_writel.exit72.i

do.body.i71.i:                                    ; preds = %ehci_writel.exit67.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %22, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %28 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %28) #7, !srcloc !91
  br label %ehci_writel.exit72.i

ehci_writel.exit72.i:                             ; preds = %do.body.i71.i, %ehci_writel.exit67.i.ehci_writel.exit72.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %ehci_writel.exit72.i
  %tries.0.i = phi i32 [ 100, %ehci_writel.exit72.i ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #7, !srcloc !88
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %and6.i = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp eq i32 %and6.i, 0
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  %dec.i = add nsw i32 %tries.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tries.0.i)
  %tobool7.not.i = icmp eq i32 %tries.0.i, 0
  %or.cond.i = select i1 %tobool.not.not.i, i1 true, i1 %tobool7.not.i
  br i1 %or.cond.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  br i1 %tobool.not.i, label %for.inc.i, label %do.end.i.for.end.i_crit_edge

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i:                                        ; preds = %do.end.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #7, !srcloc !88
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %33 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load.i64.1.i = load i32, ptr %imx28_write_fix.i.i, align 4
  %34 = and i32 %bf.load.i64.1.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i65.1.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i65.1.i, label %do.body.i66.1.i, label %for.inc.i.ehci_writel.exit67.1.i_crit_edge

for.inc.i.ehci_writel.exit67.1.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ehci_writel.exit67.1.i

do.body.i66.1.i:                                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.1.i = or i32 %32, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.1.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %35) #7, !srcloc !91
  br label %ehci_writel.exit67.1.i

ehci_writel.exit67.1.i:                           ; preds = %do.body.i66.1.i, %for.inc.i.ehci_writel.exit67.1.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %36 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load.i69.1.i = load i32, ptr %imx28_write_fix.i.i, align 4
  %37 = and i32 %bf.load.i69.1.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i70.1.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i70.1.i, label %do.body.i71.1.i, label %ehci_writel.exit67.1.i.ehci_writel.exit72.1.i_crit_edge

ehci_writel.exit67.1.i.ehci_writel.exit72.1.i_crit_edge: ; preds = %ehci_writel.exit67.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ehci_writel.exit72.1.i

do.body.i71.1.i:                                  ; preds = %ehci_writel.exit67.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.1.i = and i32 %32, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %38 = tail call i32 @llvm.bswap.i32(i32 %and.1.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %38) #7, !srcloc !91
  br label %ehci_writel.exit72.1.i

ehci_writel.exit72.1.i:                           ; preds = %do.body.i71.1.i, %ehci_writel.exit67.1.i.ehci_writel.exit72.1.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %do.body.1.i

do.body.1.i:                                      ; preds = %do.body.1.i.do.body.1.i_crit_edge, %ehci_writel.exit72.1.i
  %tries.0.1.i = phi i32 [ 100, %ehci_writel.exit72.1.i ], [ %dec.1.i, %do.body.1.i.do.body.1.i_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #7, !srcloc !88
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %and6.1.i = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.1.i)
  %tobool.not.1.i = icmp eq i32 %and6.1.i, 0
  %tobool.not.not.1.i = xor i1 %tobool.not.1.i, true
  %dec.1.i = add nsw i32 %tries.0.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tries.0.1.i)
  %tobool7.not.1.i = icmp eq i32 %tries.0.1.i, 0
  %or.cond.1.i = select i1 %tobool.not.not.1.i, i1 true, i1 %tobool7.not.1.i
  br i1 %or.cond.1.i, label %do.end.1.i, label %do.body.1.i.do.body.1.i_crit_edge

do.body.1.i.do.body.1.i_crit_edge:                ; preds = %do.body.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.1.i

do.end.1.i:                                       ; preds = %do.body.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select.i = select i1 %tobool.not.1.i, i32 -110, i32 0
  br label %for.end.i

for.end.i:                                        ; preds = %do.end.1.i, %do.end.i.for.end.i_crit_edge
  %.lcssa.lcssa.i = phi i32 [ %30, %do.end.i.for.end.i_crit_edge ], [ %40, %do.end.1.i ]
  %cmp10.i = phi i32 [ 0, %do.end.i.for.end.i_crit_edge ], [ %spec.select.i, %do.end.1.i ]
  %and13.i = and i32 %.lcssa.lcssa.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %for.end.i.if.end16.i_crit_edge, label %if.then15.i

for.end.i.if.end16.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then15.i:                                      ; preds = %for.end.i
  %41 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load.i74.i = load i32, ptr %imx28_write_fix.i.i, align 4
  %42 = and i32 %bf.load.i74.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i75.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i75.i, label %do.body.i76.i, label %if.then15.i.if.end16.i_crit_edge

if.then15.i.if.end16.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

do.body.i76.i:                                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 33554432) #7, !srcloc !91
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.body.i76.i, %if.then15.i.if.end16.i_crit_edge, %for.end.i.if.end16.i_crit_edge
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 8
  %status.i = getelementptr inbounds %struct.ehci_regs, ptr %44, i32 0, i32 1
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status.i) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %46 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load.i79.i = load i32, ptr %imx28_write_fix.i.i, align 4
  %47 = and i32 %bf.load.i79.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i80.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i80.i, label %do.body.i81.i, label %if.end16.i.ehci_writel.exit82.i_crit_edge

if.end16.i.ehci_writel.exit82.i_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ehci_writel.exit82.i

do.body.i81.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 8
  %status20.i = getelementptr inbounds %struct.ehci_regs, ptr %49, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %status20.i, i32 %45) #7, !srcloc !91
  br label %ehci_writel.exit82.i

ehci_writel.exit82.i:                             ; preds = %do.body.i81.i, %if.end16.i.ehci_writel.exit82.i_crit_edge
  %call26.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call26.i, ptr %flags, align 4
  %51 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load.i84.i = load i32, ptr %imx28_write_fix.i.i, align 4
  %52 = and i32 %bf.load.i84.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i85.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i85.i, label %do.body.i86.i, label %ehci_writel.exit82.i.tegra_usb_internal_port_reset.exit_crit_edge

ehci_writel.exit82.i.tegra_usb_internal_port_reset.exit_crit_edge: ; preds = %ehci_writel.exit82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_usb_internal_port_reset.exit

do.body.i86.i:                                    ; preds = %ehci_writel.exit82.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 8
  %intr_enable32.i = getelementptr inbounds %struct.ehci_regs, ptr %54, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intr_enable32.i, i32 %14) #7, !srcloc !91
  br label %tegra_usb_internal_port_reset.exit

tegra_usb_internal_port_reset.exit:               ; preds = %do.body.i86.i, %ehci_writel.exit82.i.tegra_usb_internal_port_reset.exit_crit_edge
  %55 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %done, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %tegra_usb_internal_port_reset.exit, %lor.lhs.false.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %retval2.0 = phi i32 [ %cmp10.i, %tegra_usb_internal_port_reset.exit ], [ 0, %lor.lhs.false.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge ]
  ret i32 %retval2.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_usb_notify_event(ptr nocapture noundef readonly %ci, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci, align 8
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %cond = icmp eq i32 %event, 0
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %hcd = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 38
  %6 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %has_tdi_phy_lpm = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %has_tdi_phy_lpm to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %has_tdi_phy_lpm, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %has_tdi_phy_lpm, align 4
  %imx28_write_fix.i = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %9 = ptrtoint ptr %imx28_write_fix.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load.i = load i32, ptr %imx28_write_fix.i, align 4
  %10 = and i32 %bf.load.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 1, i32 1
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 8
  %txfill_tuning = getelementptr inbounds %struct.ehci_regs, ptr %12, i32 0, i32 8
  %soc = getelementptr inbounds %struct.tegra_usb, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %soc, align 4
  %txfifothresh = getelementptr inbounds %struct.tegra_usb_soc_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %txfifothresh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %txfifothresh, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = lshr i32 %17, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txfill_tuning, i32 %18) #7, !srcloc !91
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body.i, %if.then.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_get_phy_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ci_hdrc_add_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_hdrc_remove_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_usb_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.tegra_usb, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_usb_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.tegra_usb, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.cleanup_crit_edge

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %retval.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %clk_prepare_enable.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ 0, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_ci_hdrc_tegra__293_415_tegra_usb_driver_init6, !1, !"__initcall__kmod_ci_hdrc_tegra__293_415_tegra_usb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 415, i32 1}
!2 = !{ptr @__exitcall_tegra_usb_driver_exit, !1, !"__exitcall_tegra_usb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description294, !4, !"__UNIQUE_ID_description294", i1 false, i1 false}
!4 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 417, i32 1}
!5 = !{ptr @__UNIQUE_ID_author295, !6, !"__UNIQUE_ID_author295", i1 false, i1 false}
!6 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 418, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 419, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 408, i32 11}
!12 = !{ptr @tegra_usb_driver, !13, !"tegra_usb_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 406, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 288, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tegra_usb_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tegra_usb_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 292, i32 53}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 295, i32 10}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 300, i32 3}
!28 = !{ptr @tegra_usb_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tegra_usb_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 313, i32 42}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 318, i32 3}
!34 = !{ptr @tegra_usb_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @tegra_usb_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 350, i32 3}
!38 = !{ptr @tegra_usb_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tegra_usb_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 105, i32 43}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 107, i32 3}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @tegra_usb_reset_controller._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @tegra_usb_reset_controller._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 120, i32 49}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 122, i32 3}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @tegra_usb_reset_controller._entry.22, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @tegra_usb_reset_controller._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 123, i32 3}
!56 = !{ptr @tegra_usb_reset_controller._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @tegra_usb_reset_controller._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @tegra_usb_of_match, !59, !"tegra_usb_of_match", i1 false, i1 false}
!59 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 74, i32 34}
!60 = !{ptr @tegra20_ehci_soc_info, !61, !"tegra20_ehci_soc_info", i1 false, i1 false}
!61 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 42, i32 40}
!62 = !{ptr @tegra30_ehci_soc_info, !63, !"tegra30_ehci_soc_info", i1 false, i1 false}
!63 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 50, i32 40}
!64 = !{ptr @tegra20_udc_soc_info, !65, !"tegra20_udc_soc_info", i1 false, i1 false}
!65 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 58, i32 40}
!66 = !{ptr @tegra30_udc_soc_info, !67, !"tegra30_udc_soc_info", i1 false, i1 false}
!67 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 66, i32 40}
!68 = !{ptr @tegra_usb_pm, !69, !"tegra_usb_pm", i1 false, i1 false}
!69 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 401, i32 32}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/chipidea/ci_hdrc_tegra.c", i32 385, i32 3}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @tegra_usb_runtime_resume._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @tegra_usb_runtime_resume._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 2148247955}
!85 = !{i64 732778, i64 732803, i64 732825, i64 732841, i64 732853, i64 732873, i64 732897, i64 732913, i64 732925}
!86 = !{i64 2148248143}
!87 = !{i8 0, i8 2}
!88 = !{i64 2037859}
!89 = !{i64 2155408647}
!90 = !{i64 2155409186}
!91 = !{i64 2037441}
